; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_register_li_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_register_li_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i64, %struct.ext4_li_request* }
%struct.ext4_li_request = type { i32, i64 }

@ext4_li_mtx = common dso_local global i32 0, align 4
@INIT_INODE_TABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ext4_li_info = common dso_local global %struct.TYPE_2__* null, align 8
@EXT4_LAZYINIT_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_register_li_request(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ext4_sb_info*, align 8
  %6 = alloca %struct.ext4_li_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %9)
  store %struct.ext4_sb_info* %10, %struct.ext4_sb_info** %5, align 8
  store %struct.ext4_li_request* null, %struct.ext4_li_request** %6, align 8
  %11 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %12 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %14 = call i32 @mutex_lock(i32* @ext4_li_mtx)
  %15 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %16 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %15, i32 0, i32 1
  %17 = load %struct.ext4_li_request*, %struct.ext4_li_request** %16, align 8
  %18 = icmp ne %struct.ext4_li_request* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %21 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %20, i32 0, i32 1
  %22 = load %struct.ext4_li_request*, %struct.ext4_li_request** %21, align 8
  %23 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %84

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = call i64 @sb_rdonly(%struct.super_block* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load %struct.super_block*, %struct.super_block** %3, align 8
  %34 = load i32, i32* @INIT_INODE_TABLE, align 4
  %35 = call i32 @test_opt(%struct.super_block* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %28, %24
  br label %84

38:                                               ; preds = %32
  %39 = load %struct.super_block*, %struct.super_block** %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call %struct.ext4_li_request* @ext4_li_request_new(%struct.super_block* %39, i64 %40)
  store %struct.ext4_li_request* %41, %struct.ext4_li_request** %6, align 8
  %42 = load %struct.ext4_li_request*, %struct.ext4_li_request** %6, align 8
  %43 = icmp ne %struct.ext4_li_request* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %84

47:                                               ; preds = %38
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ext4_li_info, align 8
  %49 = icmp eq %struct.TYPE_2__* null, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = call i32 (...) @ext4_li_info_new()
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %84

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %47
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ext4_li_info, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.ext4_li_request*, %struct.ext4_li_request** %6, align 8
  %61 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ext4_li_info, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = call i32 @list_add(i32* %61, i32* %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ext4_li_info, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.ext4_li_request*, %struct.ext4_li_request** %6, align 8
  %69 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %70 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %69, i32 0, i32 1
  store %struct.ext4_li_request* %68, %struct.ext4_li_request** %70, align 8
  store %struct.ext4_li_request* null, %struct.ext4_li_request** %6, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ext4_li_info, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @EXT4_LAZYINIT_RUNNING, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %56
  %78 = call i32 (...) @ext4_run_lazyinit_thread()
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %84

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %56
  br label %84

84:                                               ; preds = %83, %81, %54, %44, %37, %19
  %85 = call i32 @mutex_unlock(i32* @ext4_li_mtx)
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.ext4_li_request*, %struct.ext4_li_request** %6, align 8
  %90 = call i32 @kfree(%struct.ext4_li_request* %89)
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

declare dso_local %struct.ext4_li_request* @ext4_li_request_new(%struct.super_block*, i64) #1

declare dso_local i32 @ext4_li_info_new(...) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ext4_run_lazyinit_thread(...) #1

declare dso_local i32 @kfree(%struct.ext4_li_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
