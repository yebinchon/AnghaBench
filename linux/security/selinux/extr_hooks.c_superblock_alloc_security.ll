; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_superblock_alloc_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_superblock_alloc_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i8*, i32, i8*, %struct.super_block*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SECINITSID_UNLABELED = common dso_local global i8* null, align 8
@SECINITSID_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @superblock_alloc_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @superblock_alloc_security(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.superblock_security_struct*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.superblock_security_struct* @kzalloc(i32 48, i32 %5)
  store %struct.superblock_security_struct* %6, %struct.superblock_security_struct** %4, align 8
  %7 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %4, align 8
  %8 = icmp ne %struct.superblock_security_struct* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %4, align 8
  %14 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %13, i32 0, i32 6
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %4, align 8
  %17 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %16, i32 0, i32 5
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %4, align 8
  %20 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %19, i32 0, i32 4
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %4, align 8
  %24 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %23, i32 0, i32 3
  store %struct.super_block* %22, %struct.super_block** %24, align 8
  %25 = load i8*, i8** @SECINITSID_UNLABELED, align 8
  %26 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %4, align 8
  %27 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @SECINITSID_FILE, align 4
  %29 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %4, align 8
  %30 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** @SECINITSID_UNLABELED, align 8
  %32 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %4, align 8
  %33 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %4, align 8
  %35 = load %struct.super_block*, %struct.super_block** %3, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 0
  store %struct.superblock_security_struct* %34, %struct.superblock_security_struct** %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %12, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.superblock_security_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
