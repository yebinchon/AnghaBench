; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_strlist.c_strlist__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_strlist.c_strlist__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strlist = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.strlist_config = type { i8*, i32, i32 }

@strlist__node_cmp = common dso_local global i32 0, align 4
@strlist__node_new = common dso_local global i32 0, align 4
@strlist__node_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.strlist* @strlist__new(i8* %0, %struct.strlist_config* %1) #0 {
  %3 = alloca %struct.strlist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strlist_config*, align 8
  %6 = alloca %struct.strlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.strlist_config* %1, %struct.strlist_config** %5, align 8
  %10 = call %struct.strlist* @malloc(i32 20)
  store %struct.strlist* %10, %struct.strlist** %6, align 8
  %11 = load %struct.strlist*, %struct.strlist** %6, align 8
  %12 = icmp ne %struct.strlist* %11, null
  br i1 %12, label %13, label %61

13:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %14 = load %struct.strlist_config*, %struct.strlist_config** %5, align 8
  %15 = icmp ne %struct.strlist_config* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load %struct.strlist_config*, %struct.strlist_config** %5, align 8
  %18 = getelementptr inbounds %struct.strlist_config, %struct.strlist_config* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load %struct.strlist_config*, %struct.strlist_config** %5, align 8
  %24 = getelementptr inbounds %struct.strlist_config, %struct.strlist_config* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %9, align 8
  %26 = load %struct.strlist_config*, %struct.strlist_config** %5, align 8
  %27 = getelementptr inbounds %struct.strlist_config, %struct.strlist_config* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %16, %13
  %30 = load %struct.strlist*, %struct.strlist** %6, align 8
  %31 = getelementptr inbounds %struct.strlist, %struct.strlist* %30, i32 0, i32 2
  %32 = call i32 @rblist__init(%struct.TYPE_2__* %31)
  %33 = load i32, i32* @strlist__node_cmp, align 4
  %34 = load %struct.strlist*, %struct.strlist** %6, align 8
  %35 = getelementptr inbounds %struct.strlist, %struct.strlist* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @strlist__node_new, align 4
  %38 = load %struct.strlist*, %struct.strlist** %6, align 8
  %39 = getelementptr inbounds %struct.strlist, %struct.strlist* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @strlist__node_delete, align 4
  %42 = load %struct.strlist*, %struct.strlist** %6, align 8
  %43 = getelementptr inbounds %struct.strlist, %struct.strlist* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.strlist*, %struct.strlist** %6, align 8
  %47 = getelementptr inbounds %struct.strlist, %struct.strlist* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.strlist*, %struct.strlist** %6, align 8
  %50 = getelementptr inbounds %struct.strlist, %struct.strlist* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %29
  %54 = load %struct.strlist*, %struct.strlist** %6, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i64 @strlist__parse_list(%struct.strlist* %54, i8* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %63

60:                                               ; preds = %53, %29
  br label %61

61:                                               ; preds = %60, %2
  %62 = load %struct.strlist*, %struct.strlist** %6, align 8
  store %struct.strlist* %62, %struct.strlist** %3, align 8
  br label %66

63:                                               ; preds = %59
  %64 = load %struct.strlist*, %struct.strlist** %6, align 8
  %65 = call i32 @free(%struct.strlist* %64)
  store %struct.strlist* null, %struct.strlist** %3, align 8
  br label %66

66:                                               ; preds = %63, %61
  %67 = load %struct.strlist*, %struct.strlist** %3, align 8
  ret %struct.strlist* %67
}

declare dso_local %struct.strlist* @malloc(i32) #1

declare dso_local i32 @rblist__init(%struct.TYPE_2__*) #1

declare dso_local i64 @strlist__parse_list(%struct.strlist*, i8*, i8*) #1

declare dso_local i32 @free(%struct.strlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
