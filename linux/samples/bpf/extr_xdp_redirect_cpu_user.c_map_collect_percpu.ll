; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_map_collect_percpu.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_map_collect_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.datarec = type { i64, i64, i64 }

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
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.record* %2, %struct.record** %7, align 8
  %16 = call i32 (...) @bpf_num_possible_cpus()
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.datarec, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @bpf_map_lookup_elem(i32 %21, i32* %6, %struct.datarec* %20)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %110

28:                                               ; preds = %3
  %29 = call i32 (...) @gettime()
  %30 = load %struct.record*, %struct.record** %7, align 8
  %31 = getelementptr inbounds %struct.record, %struct.record* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %94, %28
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %97

36:                                               ; preds = %32
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.datarec, %struct.datarec* %20, i64 %38
  %40 = getelementptr inbounds %struct.datarec, %struct.datarec* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.record*, %struct.record** %7, align 8
  %43 = getelementptr inbounds %struct.record, %struct.record* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i64 %41, i64* %48, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.datarec, %struct.datarec* %20, i64 %50
  %52 = getelementptr inbounds %struct.datarec, %struct.datarec* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr i8, i8* %54, i64 %53
  store i8* %55, i8** %11, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.datarec, %struct.datarec* %20, i64 %57
  %59 = getelementptr inbounds %struct.datarec, %struct.datarec* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.record*, %struct.record** %7, align 8
  %62 = getelementptr inbounds %struct.record, %struct.record* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i64 %60, i64* %67, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.datarec, %struct.datarec* %20, i64 %69
  %71 = getelementptr inbounds %struct.datarec, %struct.datarec* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr i8, i8* %73, i64 %72
  store i8* %74, i8** %12, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.datarec, %struct.datarec* %20, i64 %76
  %78 = getelementptr inbounds %struct.datarec, %struct.datarec* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.record*, %struct.record** %7, align 8
  %81 = getelementptr inbounds %struct.record, %struct.record* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i64 %79, i64* %86, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.datarec, %struct.datarec* %20, i64 %88
  %90 = getelementptr inbounds %struct.datarec, %struct.datarec* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr i8, i8* %92, i64 %91
  store i8* %93, i8** %13, align 8
  br label %94

94:                                               ; preds = %36
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %32

97:                                               ; preds = %32
  %98 = load i8*, i8** %11, align 8
  %99 = load %struct.record*, %struct.record** %7, align 8
  %100 = getelementptr inbounds %struct.record, %struct.record* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i8* %98, i8** %101, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load %struct.record*, %struct.record** %7, align 8
  %104 = getelementptr inbounds %struct.record, %struct.record* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load %struct.record*, %struct.record** %7, align 8
  %108 = getelementptr inbounds %struct.record, %struct.record* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %110

110:                                              ; preds = %97, %24
  %111 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %4, align 4
  ret i32 %112
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
