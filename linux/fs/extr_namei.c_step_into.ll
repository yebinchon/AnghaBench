; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_step_into.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_step_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, i32, %struct.inode*, i64 }
%struct.path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }

@WALK_MORE = common dso_local global i32 0, align 4
@WALK_FOLLOW = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, %struct.path*, i32, %struct.inode*, i32)* @step_into to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @step_into(%struct.nameidata* %0, %struct.path* %1, i32 %2, %struct.inode* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %7, align 8
  store %struct.path* %1, %struct.path** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.inode* %3, %struct.inode** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @WALK_MORE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %5
  %17 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %18 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %23 = call i32 @put_link(%struct.nameidata* %22)
  br label %24

24:                                               ; preds = %21, %16, %5
  %25 = load %struct.path*, %struct.path** %8, align 8
  %26 = getelementptr inbounds %struct.path, %struct.path* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @d_is_symlink(%struct.TYPE_2__* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @WALK_FOLLOW, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %34
  %40 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %41 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %39, %24
  %47 = load %struct.path*, %struct.path** %8, align 8
  %48 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %49 = call i32 @path_to_nameidata(%struct.path* %47, %struct.nameidata* %48)
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %51, i32 0, i32 2
  store %struct.inode* %50, %struct.inode** %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %55 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %6, align 4
  br label %81

56:                                               ; preds = %39, %34
  %57 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %58 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @LOOKUP_RCU, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load %struct.path*, %struct.path** %8, align 8
  %65 = getelementptr inbounds %struct.path, %struct.path* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @read_seqcount_retry(i32* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @ECHILD, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %81

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %56
  %76 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %77 = load %struct.path*, %struct.path** %8, align 8
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @pick_link(%struct.nameidata* %76, %struct.path* %77, %struct.inode* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %75, %71, %46
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @put_link(%struct.nameidata*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @d_is_symlink(%struct.TYPE_2__*) #1

declare dso_local i32 @path_to_nameidata(%struct.path*, %struct.nameidata*) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @pick_link(%struct.nameidata*, %struct.path*, %struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
