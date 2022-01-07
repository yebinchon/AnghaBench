; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_lookup_msr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_lookup_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msrmap = type { i64 }
%struct.TYPE_6__ = type { i32 }

@lookup_msr.warned = internal global i32 0, align 4
@msrmap = common dso_local global %struct.msrmap* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"%s: Unknown MSR in event file %.*s\0A\00", align 1
@prog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msrmap* (i8*, %struct.TYPE_6__*)* @lookup_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msrmap* @lookup_msr(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.msrmap*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = bitcast %struct.TYPE_6__* %6 to i8*
  %10 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @cut_comma(i8* %11, %struct.TYPE_6__* %6)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %37, %2
  %14 = load %struct.msrmap*, %struct.msrmap** @msrmap, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.msrmap, %struct.msrmap* %14, i64 %16
  %18 = getelementptr inbounds %struct.msrmap, %struct.msrmap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  %23 = load %struct.msrmap*, %struct.msrmap** @msrmap, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.msrmap, %struct.msrmap* %23, i64 %25
  %27 = getelementptr inbounds %struct.msrmap, %struct.msrmap* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @json_streq(i8* %22, %struct.TYPE_6__* %6, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.msrmap*, %struct.msrmap** @msrmap, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.msrmap, %struct.msrmap* %32, i64 %34
  store %struct.msrmap* %35, %struct.msrmap** %3, align 8
  br label %55

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %13

40:                                               ; preds = %13
  %41 = load i32, i32* @lookup_msr.warned, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  store i32 1, i32* @lookup_msr.warned, align 4
  %44 = load i32, i32* @prog, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = call i32 @json_len(%struct.TYPE_6__* %45)
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46, i8* %52)
  br label %54

54:                                               ; preds = %43, %40
  store %struct.msrmap* null, %struct.msrmap** %3, align 8
  br label %55

55:                                               ; preds = %54, %31
  %56 = load %struct.msrmap*, %struct.msrmap** %3, align 8
  ret %struct.msrmap* %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cut_comma(i8*, %struct.TYPE_6__*) #2

declare dso_local i64 @json_streq(i8*, %struct.TYPE_6__*, i64) #2

declare dso_local i32 @pr_err(i8*, i32, i32, i8*) #2

declare dso_local i32 @json_len(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
