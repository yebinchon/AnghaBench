; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intlist.c_intlist__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intlist.c_intlist__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intlist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@intlist__node_cmp = common dso_local global i32 0, align 4
@intlist__node_new = common dso_local global i32 0, align 4
@intlist__node_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intlist* @intlist__new(i8* %0) #0 {
  %2 = alloca %struct.intlist*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.intlist*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call %struct.intlist* @malloc(i32 12)
  store %struct.intlist* %5, %struct.intlist** %4, align 8
  %6 = load %struct.intlist*, %struct.intlist** %4, align 8
  %7 = icmp ne %struct.intlist* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.intlist*, %struct.intlist** %4, align 8
  %10 = getelementptr inbounds %struct.intlist, %struct.intlist* %9, i32 0, i32 0
  %11 = call i32 @rblist__init(%struct.TYPE_2__* %10)
  %12 = load i32, i32* @intlist__node_cmp, align 4
  %13 = load %struct.intlist*, %struct.intlist** %4, align 8
  %14 = getelementptr inbounds %struct.intlist, %struct.intlist* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @intlist__node_new, align 4
  %17 = load %struct.intlist*, %struct.intlist** %4, align 8
  %18 = getelementptr inbounds %struct.intlist, %struct.intlist* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @intlist__node_delete, align 4
  %21 = load %struct.intlist*, %struct.intlist** %4, align 8
  %22 = getelementptr inbounds %struct.intlist, %struct.intlist* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %8
  %27 = load %struct.intlist*, %struct.intlist** %4, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @intlist__parse_list(%struct.intlist* %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %35

32:                                               ; preds = %26, %8
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.intlist*, %struct.intlist** %4, align 8
  store %struct.intlist* %34, %struct.intlist** %2, align 8
  br label %38

35:                                               ; preds = %31
  %36 = load %struct.intlist*, %struct.intlist** %4, align 8
  %37 = call i32 @intlist__delete(%struct.intlist* %36)
  store %struct.intlist* null, %struct.intlist** %2, align 8
  br label %38

38:                                               ; preds = %35, %33
  %39 = load %struct.intlist*, %struct.intlist** %2, align 8
  ret %struct.intlist* %39
}

declare dso_local %struct.intlist* @malloc(i32) #1

declare dso_local i32 @rblist__init(%struct.TYPE_2__*) #1

declare dso_local i64 @intlist__parse_list(%struct.intlist*, i8*) #1

declare dso_local i32 @intlist__delete(%struct.intlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
