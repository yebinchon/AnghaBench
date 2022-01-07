; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strfilter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.strfilter* @strfilter__new(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.strfilter*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = call %struct.strfilter* @zalloc(i32 4)
  store %struct.strfilter* %7, %struct.strfilter** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load %struct.strfilter*, %struct.strfilter** %5, align 8
  %9 = icmp ne %struct.strfilter* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strfilter_node__new(i8* %11, i8** %6)
  %13 = load %struct.strfilter*, %struct.strfilter** %5, align 8
  %14 = getelementptr inbounds %struct.strfilter, %struct.strfilter* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.strfilter*, %struct.strfilter** %5, align 8
  %17 = icmp ne %struct.strfilter* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.strfilter*, %struct.strfilter** %5, align 8
  %20 = getelementptr inbounds %struct.strfilter, %struct.strfilter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23, %18, %15
  %29 = load i8**, i8*** %4, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = load i8**, i8*** %4, align 8
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.strfilter*, %struct.strfilter** %5, align 8
  %36 = call i32 @strfilter__delete(%struct.strfilter* %35)
  store %struct.strfilter* null, %struct.strfilter** %5, align 8
  br label %37

37:                                               ; preds = %34, %23
  %38 = load %struct.strfilter*, %struct.strfilter** %5, align 8
  ret %struct.strfilter* %38
}

declare dso_local %struct.strfilter* @zalloc(i32) #1

declare dso_local i32 @strfilter_node__new(i8*, i8**) #1

declare dso_local i32 @strfilter__delete(%struct.strfilter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
