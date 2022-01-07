; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dsos.c_dso__set_basename.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dsos.c_dso__set_basename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"/tmp/perf-%d.map\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"[JIT] tid %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dso*)* @dso__set_basename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dso__set_basename(%struct.dso* %0) #0 {
  %2 = alloca %struct.dso*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %2, align 8
  %6 = load %struct.dso*, %struct.dso** %2, align 8
  %7 = getelementptr inbounds %struct.dso, %struct.dso* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @sscanf(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %5)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @asprintf(i8** %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %39

16:                                               ; preds = %11
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.dso*, %struct.dso** %2, align 8
  %19 = getelementptr inbounds %struct.dso, %struct.dso* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @strdup(i32 %20)
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %39

25:                                               ; preds = %17
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @basename(i8* %26)
  %28 = call i8* @strdup(i32 %27)
  store i8* %28, i8** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i8*, i8** %3, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %39

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %16
  %36 = load %struct.dso*, %struct.dso** %2, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @dso__set_short_name(%struct.dso* %36, i8* %37, i32 1)
  br label %39

39:                                               ; preds = %35, %33, %24, %15
  ret void
}

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i64 @asprintf(i8**, i8*, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dso__set_short_name(%struct.dso*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
