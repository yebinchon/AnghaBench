; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_copy_znode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_copy_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_znode = type { i64, i32, %struct.ubifs_zbranch*, i32, i32* }
%struct.ubifs_zbranch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_znode* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIRTY_ZNODE = common dso_local global i32 0, align 4
@COW_ZNODE = common dso_local global i32 0, align 4
@OBSOLETE_ZNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_znode* (%struct.ubifs_info*, %struct.ubifs_znode*)* @copy_znode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_znode* @copy_znode(%struct.ubifs_info* %0, %struct.ubifs_znode* %1) #0 {
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %5, align 8
  %10 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_NOFS, align 4
  %15 = call %struct.ubifs_znode* @kmemdup(%struct.ubifs_znode* %10, i32 %13, i32 %14)
  store %struct.ubifs_znode* %15, %struct.ubifs_znode** %6, align 8
  %16 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %17 = icmp ne %struct.ubifs_znode* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.ubifs_znode* @ERR_PTR(i32 %24)
  store %struct.ubifs_znode* %25, %struct.ubifs_znode** %3, align 8
  br label %87

26:                                               ; preds = %2
  %27 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %28 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @DIRTY_ZNODE, align 4
  %30 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %31 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %30, i32 0, i32 3
  %32 = call i32 @__set_bit(i32 %29, i32* %31)
  %33 = load i32, i32* @COW_ZNODE, align 4
  %34 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %35 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %34, i32 0, i32 3
  %36 = call i32 @__clear_bit(i32 %33, i32* %35)
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %38 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %39 = call i32 @ubifs_zn_obsolete(%struct.ubifs_znode* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @ubifs_assert(%struct.ubifs_info* %37, i32 %42)
  %44 = load i32, i32* @OBSOLETE_ZNODE, align 4
  %45 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %46 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %45, i32 0, i32 3
  %47 = call i32 @__set_bit(i32 %44, i32* %46)
  %48 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %49 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %26
  %53 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %54 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %78, %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %62 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %61, i32 0, i32 2
  %63 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %63, i64 %65
  store %struct.ubifs_zbranch* %66, %struct.ubifs_zbranch** %9, align 8
  %67 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %9, align 8
  %68 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %73 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %9, align 8
  %74 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store %struct.ubifs_znode* %72, %struct.ubifs_znode** %76, align 8
  br label %77

77:                                               ; preds = %71, %60
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %56

81:                                               ; preds = %56
  br label %82

82:                                               ; preds = %81, %26
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %83, i32 0, i32 0
  %85 = call i32 @atomic_long_inc(i32* %84)
  %86 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  store %struct.ubifs_znode* %86, %struct.ubifs_znode** %3, align 8
  br label %87

87:                                               ; preds = %82, %22
  %88 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  ret %struct.ubifs_znode* %88
}

declare dso_local %struct.ubifs_znode* @kmemdup(%struct.ubifs_znode*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_znode* @ERR_PTR(i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_zn_obsolete(%struct.ubifs_znode*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
