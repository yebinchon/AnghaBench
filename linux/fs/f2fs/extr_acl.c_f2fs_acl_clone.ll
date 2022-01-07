; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_acl.c_f2fs_acl_clone.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_acl.c_f2fs_acl_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.posix_acl*, i32)* @f2fs_acl_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @f2fs_acl_clone(%struct.posix_acl* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.posix_acl*, align 8
  %6 = alloca i32, align 4
  store %struct.posix_acl* %0, %struct.posix_acl** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.posix_acl* null, %struct.posix_acl** %5, align 8
  %7 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  %8 = icmp ne %struct.posix_acl* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  %11 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = add i64 8, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.posix_acl* @kmemdup(%struct.posix_acl* %17, i32 %18, i32 %19)
  store %struct.posix_acl* %20, %struct.posix_acl** %5, align 8
  %21 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %22 = icmp ne %struct.posix_acl* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %9
  %24 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %25 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %24, i32 0, i32 1
  %26 = call i32 @refcount_set(i32* %25, i32 1)
  br label %27

27:                                               ; preds = %23, %9
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  ret %struct.posix_acl* %29
}

declare dso_local %struct.posix_acl* @kmemdup(%struct.posix_acl*, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
