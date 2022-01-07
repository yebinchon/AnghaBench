; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_set_cached_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_set_cached_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_cached_acl(%struct.inode* %0, i32 %1, %struct.posix_acl* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca %struct.posix_acl**, align 8
  %8 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.posix_acl* %2, %struct.posix_acl** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.posix_acl** @acl_by_type(%struct.inode* %9, i32 %10)
  store %struct.posix_acl** %11, %struct.posix_acl*** %7, align 8
  %12 = load %struct.posix_acl**, %struct.posix_acl*** %7, align 8
  %13 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %14 = call i32 @posix_acl_dup(%struct.posix_acl* %13)
  %15 = call %struct.posix_acl* @xchg(%struct.posix_acl** %12, i32 %14)
  store %struct.posix_acl* %15, %struct.posix_acl** %8, align 8
  %16 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %17 = call i32 @is_uncached_acl(%struct.posix_acl* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %21 = call i32 @posix_acl_release(%struct.posix_acl* %20)
  br label %22

22:                                               ; preds = %19, %3
  ret void
}

declare dso_local %struct.posix_acl** @acl_by_type(%struct.inode*, i32) #1

declare dso_local %struct.posix_acl* @xchg(%struct.posix_acl**, i32) #1

declare dso_local i32 @posix_acl_dup(%struct.posix_acl*) #1

declare dso_local i32 @is_uncached_acl(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
