; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_misc.c_ubifs_load_znode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_misc.c_ubifs_load_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_zbranch = type { %struct.ubifs_znode* }
%struct.ubifs_znode = type { i32, i32, %struct.ubifs_znode* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ubifs_clean_zn_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1, %struct.ubifs_znode* %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.ubifs_zbranch*, align 8
  %8 = alloca %struct.ubifs_znode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %7, align 8
  store %struct.ubifs_znode* %2, %struct.ubifs_znode** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %13 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %14 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %13, i32 0, i32 0
  %15 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %16 = icmp ne %struct.ubifs_znode* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @ubifs_assert(%struct.ubifs_info* %12, i32 %18)
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call %struct.ubifs_znode* @kzalloc(i32 %22, i32 %23)
  store %struct.ubifs_znode* %24, %struct.ubifs_znode** %11, align 8
  %25 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %26 = icmp ne %struct.ubifs_znode* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.ubifs_znode* @ERR_PTR(i32 %29)
  store %struct.ubifs_znode* %30, %struct.ubifs_znode** %5, align 8
  br label %62

31:                                               ; preds = %4
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %33 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %34 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %35 = call i32 @read_znode(%struct.ubifs_info* %32, %struct.ubifs_zbranch* %33, %struct.ubifs_znode* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %57

39:                                               ; preds = %31
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 0
  %42 = call i32 @atomic_long_inc(i32* %41)
  %43 = call i32 @atomic_long_inc(i32* @ubifs_clean_zn_cnt)
  %44 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %45 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %46 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %45, i32 0, i32 0
  store %struct.ubifs_znode* %44, %struct.ubifs_znode** %46, align 8
  %47 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %48 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %49 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %48, i32 0, i32 2
  store %struct.ubifs_znode* %47, %struct.ubifs_znode** %49, align 8
  %50 = call i32 (...) @ktime_get_seconds()
  %51 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %52 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %55 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  store %struct.ubifs_znode* %56, %struct.ubifs_znode** %5, align 8
  br label %62

57:                                               ; preds = %38
  %58 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %59 = call i32 @kfree(%struct.ubifs_znode* %58)
  %60 = load i32, i32* %10, align 4
  %61 = call %struct.ubifs_znode* @ERR_PTR(i32 %60)
  store %struct.ubifs_znode* %61, %struct.ubifs_znode** %5, align 8
  br label %62

62:                                               ; preds = %57, %39, %27
  %63 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  ret %struct.ubifs_znode* %63
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local %struct.ubifs_znode* @kzalloc(i32, i32) #1

declare dso_local %struct.ubifs_znode* @ERR_PTR(i32) #1

declare dso_local i32 @read_znode(%struct.ubifs_info*, %struct.ubifs_zbranch*, %struct.ubifs_znode*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @ktime_get_seconds(...) #1

declare dso_local i32 @kfree(%struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
