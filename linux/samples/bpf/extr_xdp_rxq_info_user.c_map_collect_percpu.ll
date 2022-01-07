; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_map_collect_percpu.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_map_collect_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.datarec = type { i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ERR: bpf_map_lookup_elem failed key:0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.record*)* @map_collect_percpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_collect_percpu(i32 %0, i32 %1, %struct.record* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.record*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.record* %2, %struct.record** %7, align 8
  %15 = call i32 (...) @bpf_num_possible_cpus()
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca %struct.datarec, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @bpf_map_lookup_elem(i32 %20, i32* %6, %struct.datarec* %19)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %86

27:                                               ; preds = %3
  %28 = call i32 (...) @gettime()
  %29 = load %struct.record*, %struct.record** %7, align 8
  %30 = getelementptr inbounds %struct.record, %struct.record* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %74, %27
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %31
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.datarec, %struct.datarec* %19, i64 %37
  %39 = getelementptr inbounds %struct.datarec, %struct.datarec* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.record*, %struct.record** %7, align 8
  %42 = getelementptr inbounds %struct.record, %struct.record* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 %40, i64* %47, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.datarec, %struct.datarec* %19, i64 %49
  %51 = getelementptr inbounds %struct.datarec, %struct.datarec* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr i8, i8* %53, i64 %52
  store i8* %54, i8** %11, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.datarec, %struct.datarec* %19, i64 %56
  %58 = getelementptr inbounds %struct.datarec, %struct.datarec* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 16
  %60 = load %struct.record*, %struct.record** %7, align 8
  %61 = getelementptr inbounds %struct.record, %struct.record* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i64 %59, i64* %66, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.datarec, %struct.datarec* %19, i64 %68
  %70 = getelementptr inbounds %struct.datarec, %struct.datarec* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 16
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr i8, i8* %72, i64 %71
  store i8* %73, i8** %12, align 8
  br label %74

74:                                               ; preds = %35
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %31

77:                                               ; preds = %31
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.record*, %struct.record** %7, align 8
  %80 = getelementptr inbounds %struct.record, %struct.record* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i8* %78, i8** %81, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load %struct.record*, %struct.record** %7, align 8
  %84 = getelementptr inbounds %struct.record, %struct.record* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %77, %23
  %87 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @bpf_num_possible_cpus(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @bpf_map_lookup_elem(i32, i32*, %struct.datarec*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @gettime(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
