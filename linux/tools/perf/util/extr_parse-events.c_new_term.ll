; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_new_term.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_new_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_term = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_events_term**, %struct.parse_events_term*, i8*, i32)* @new_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_term(%struct.parse_events_term** %0, %struct.parse_events_term* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parse_events_term**, align 8
  %7 = alloca %struct.parse_events_term*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.parse_events_term*, align 8
  store %struct.parse_events_term** %0, %struct.parse_events_term*** %6, align 8
  store %struct.parse_events_term* %1, %struct.parse_events_term** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call %struct.parse_events_term* @malloc(i32 32)
  store %struct.parse_events_term* %11, %struct.parse_events_term** %10, align 8
  %12 = load %struct.parse_events_term*, %struct.parse_events_term** %10, align 8
  %13 = icmp ne %struct.parse_events_term* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %48

17:                                               ; preds = %4
  %18 = load %struct.parse_events_term*, %struct.parse_events_term** %10, align 8
  %19 = load %struct.parse_events_term*, %struct.parse_events_term** %7, align 8
  %20 = bitcast %struct.parse_events_term* %18 to i8*
  %21 = bitcast %struct.parse_events_term* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 32, i1 false)
  %22 = load %struct.parse_events_term*, %struct.parse_events_term** %10, align 8
  %23 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %22, i32 0, i32 3
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.parse_events_term*, %struct.parse_events_term** %10, align 8
  %26 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.parse_events_term*, %struct.parse_events_term** %10, align 8
  %28 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %40 [
    i32 129, label %30
    i32 128, label %35
  ]

30:                                               ; preds = %17
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.parse_events_term*, %struct.parse_events_term** %10, align 8
  %33 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  br label %45

35:                                               ; preds = %17
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.parse_events_term*, %struct.parse_events_term** %10, align 8
  %38 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  br label %45

40:                                               ; preds = %17
  %41 = load %struct.parse_events_term*, %struct.parse_events_term** %10, align 8
  %42 = call i32 @free(%struct.parse_events_term* %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %48

45:                                               ; preds = %35, %30
  %46 = load %struct.parse_events_term*, %struct.parse_events_term** %10, align 8
  %47 = load %struct.parse_events_term**, %struct.parse_events_term*** %6, align 8
  store %struct.parse_events_term* %46, %struct.parse_events_term** %47, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %40, %14
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.parse_events_term* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @free(%struct.parse_events_term*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
