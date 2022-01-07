; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_alloc_pipe_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_alloc_pipe_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i64, i32, %struct.user_struct*, i32, i64 }
%struct.user_struct = type { i32 }

@PIPE_DEF_BUFFERS = common dso_local global i64 0, align 8
@pipe_max_size = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pipe_inode_info* @alloc_pipe_info() #0 {
  %1 = alloca %struct.pipe_inode_info*, align 8
  %2 = alloca %struct.pipe_inode_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.user_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i64, i64* @PIPE_DEF_BUFFERS, align 8
  store i64 %7, i64* %3, align 8
  %8 = call %struct.user_struct* (...) @get_current_user()
  store %struct.user_struct* %8, %struct.user_struct** %4, align 8
  %9 = load i32, i32* @pipe_max_size, align 4
  %10 = call i32 @READ_ONCE(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %12 = call %struct.pipe_inode_info* @kzalloc(i32 48, i32 %11)
  store %struct.pipe_inode_info* %12, %struct.pipe_inode_info** %2, align 8
  %13 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %14 = icmp eq %struct.pipe_inode_info* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  br label %90

16:                                               ; preds = %0
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = mul i64 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %19, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %25 = call i32 @capable(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = lshr i32 %28, %29
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %27, %23, %16
  %33 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i64 @account_pipe_buffers(%struct.user_struct* %33, i64 0, i32 %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @too_many_pipe_buffers_soft(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = call i64 (...) @is_unprivileged_user()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @account_pipe_buffers(%struct.user_struct* %44, i64 %45, i32 1)
  store i64 %46, i64* %5, align 8
  store i64 1, i64* %3, align 8
  br label %47

47:                                               ; preds = %43, %40, %32
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @too_many_pipe_buffers_hard(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = call i64 (...) @is_unprivileged_user()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %84

55:                                               ; preds = %51, %47
  %56 = load i64, i64* %3, align 8
  %57 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %58 = call i64 @kcalloc(i64 %56, i32 4, i32 %57)
  %59 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %60 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %59, i32 0, i32 6
  store i64 %58, i64* %60, align 8
  %61 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %62 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %55
  %66 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %67 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %66, i32 0, i32 5
  %68 = call i32 @init_waitqueue_head(i32* %67)
  %69 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %70 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %72 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load i64, i64* %3, align 8
  %74 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %75 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %77 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %78 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %77, i32 0, i32 4
  store %struct.user_struct* %76, %struct.user_struct** %78, align 8
  %79 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %80 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %79, i32 0, i32 3
  %81 = call i32 @mutex_init(i32* %80)
  %82 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  store %struct.pipe_inode_info* %82, %struct.pipe_inode_info** %1, align 8
  br label %93

83:                                               ; preds = %55
  br label %84

84:                                               ; preds = %83, %54
  %85 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %86 = load i64, i64* %3, align 8
  %87 = call i64 @account_pipe_buffers(%struct.user_struct* %85, i64 %86, i32 0)
  %88 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %89 = call i32 @kfree(%struct.pipe_inode_info* %88)
  br label %90

90:                                               ; preds = %84, %15
  %91 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %92 = call i32 @free_uid(%struct.user_struct* %91)
  store %struct.pipe_inode_info* null, %struct.pipe_inode_info** %1, align 8
  br label %93

93:                                               ; preds = %90, %65
  %94 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %1, align 8
  ret %struct.pipe_inode_info* %94
}

declare dso_local %struct.user_struct* @get_current_user(...) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.pipe_inode_info* @kzalloc(i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @account_pipe_buffers(%struct.user_struct*, i64, i32) #1

declare dso_local i64 @too_many_pipe_buffers_soft(i64) #1

declare dso_local i64 @is_unprivileged_user(...) #1

declare dso_local i64 @too_many_pipe_buffers_hard(i64) #1

declare dso_local i64 @kcalloc(i64, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kfree(%struct.pipe_inode_info*) #1

declare dso_local i32 @free_uid(%struct.user_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
