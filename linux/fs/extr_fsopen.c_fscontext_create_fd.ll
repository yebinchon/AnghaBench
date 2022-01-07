; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fsopen.c_fscontext_create_fd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fsopen.c_fscontext_create_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"[fscontext]\00", align 1
@fscontext_fops = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, i32)* @fscontext_create_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscontext_create_fd(%struct.fs_context* %0, i32 %1) #0 {
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %7 = load i32, i32* @O_RDWR, align 4
  %8 = load i32, i32* %4, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @anon_inode_getfd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* @fscontext_fops, %struct.fs_context* %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %15 = call i32 @put_fs_context(%struct.fs_context* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @anon_inode_getfd(i8*, i32*, %struct.fs_context*, i32) #1

declare dso_local i32 @put_fs_context(%struct.fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
