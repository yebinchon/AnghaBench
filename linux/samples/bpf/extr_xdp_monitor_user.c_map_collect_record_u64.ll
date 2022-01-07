; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_map_collect_record_u64.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_map_collect_record_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record_u64 = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.u64rec = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ERR: bpf_map_lookup_elem failed key:0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.record_u64*)* @map_collect_record_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_collect_record_u64(i32 %0, i32 %1, %struct.record_u64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.record_u64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.record_u64* %2, %struct.record_u64** %7, align 8
  %14 = call i32 (...) @bpf_num_possible_cpus()
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca %struct.u64rec, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @bpf_map_lookup_elem(i32 %19, i32* %6, %struct.u64rec* %18)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %64

26:                                               ; preds = %3
  %27 = call i32 (...) @gettime()
  %28 = load %struct.record_u64*, %struct.record_u64** %7, align 8
  %29 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %56, %26
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.u64rec, %struct.u64rec* %18, i64 %36
  %38 = getelementptr inbounds %struct.u64rec, %struct.u64rec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.record_u64*, %struct.record_u64** %7, align 8
  %41 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 %39, i64* %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.u64rec, %struct.u64rec* %18, i64 %48
  %50 = getelementptr inbounds %struct.u64rec, %struct.u64rec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %34
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %30

59:                                               ; preds = %30
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.record_u64*, %struct.record_u64** %7, align 8
  %62 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %64

64:                                               ; preds = %59, %22
  %65 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @bpf_num_possible_cpus(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @bpf_map_lookup_elem(i32, i32*, %struct.u64rec*) #1

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
