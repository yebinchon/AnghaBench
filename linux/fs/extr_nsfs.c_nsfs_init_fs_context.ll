; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_nsfs.c_nsfs_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_nsfs.c_nsfs_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32 }
%struct.pseudo_fs_context = type { i32*, i32* }

@NSFS_MAGIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nsfs_ops = common dso_local global i32 0, align 4
@ns_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @nsfs_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsfs_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.pseudo_fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %5 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %6 = load i32, i32* @NSFS_MAGIC, align 4
  %7 = call %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context* %5, i32 %6)
  store %struct.pseudo_fs_context* %7, %struct.pseudo_fs_context** %4, align 8
  %8 = load %struct.pseudo_fs_context*, %struct.pseudo_fs_context** %4, align 8
  %9 = icmp ne %struct.pseudo_fs_context* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.pseudo_fs_context*, %struct.pseudo_fs_context** %4, align 8
  %15 = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %14, i32 0, i32 1
  store i32* @nsfs_ops, i32** %15, align 8
  %16 = load %struct.pseudo_fs_context*, %struct.pseudo_fs_context** %4, align 8
  %17 = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %16, i32 0, i32 0
  store i32* @ns_dentry_operations, i32** %17, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
