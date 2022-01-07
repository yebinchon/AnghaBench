; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3acl.c_nfs3_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3acl.c_nfs3_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_set_acl(%struct.inode* %0, %struct.posix_acl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.posix_acl* null, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %9, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @S_ISDIR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %35 [
    i32 129, label %18
    i32 128, label %26
  ]

18:                                               ; preds = %16
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.posix_acl* @get_acl(%struct.inode* %19, i32 128)
  store %struct.posix_acl* %20, %struct.posix_acl** %9, align 8
  store %struct.posix_acl* %20, %struct.posix_acl** %8, align 8
  %21 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %22 = call i64 @IS_ERR(%struct.posix_acl* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %58

25:                                               ; preds = %18
  br label %35

26:                                               ; preds = %16
  %27 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* %27, %struct.posix_acl** %9, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call %struct.posix_acl* @get_acl(%struct.inode* %28, i32 129)
  store %struct.posix_acl* %29, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* %29, %struct.posix_acl** %8, align 8
  %30 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %31 = call i64 @IS_ERR(%struct.posix_acl* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %58

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %16, %34, %25
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %38 = icmp eq %struct.posix_acl* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.posix_acl* @posix_acl_from_mode(i32 %42, i32 %43)
  store %struct.posix_acl* %44, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* %44, %struct.posix_acl** %8, align 8
  %45 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %46 = call i64 @IS_ERR(%struct.posix_acl* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %58

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %36
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %53 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %54 = call i32 @__nfs3_proc_setacls(%struct.inode* %51, %struct.posix_acl* %52, %struct.posix_acl* %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %56 = call i32 @posix_acl_release(%struct.posix_acl* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %61

58:                                               ; preds = %48, %33, %24
  %59 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %60 = call i32 @PTR_ERR(%struct.posix_acl* %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %50
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.posix_acl* @get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @posix_acl_from_mode(i32, i32) #1

declare dso_local i32 @__nfs3_proc_setacls(%struct.inode*, %struct.posix_acl*, %struct.posix_acl*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
