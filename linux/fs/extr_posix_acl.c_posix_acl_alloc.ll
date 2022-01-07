; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @posix_acl_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.posix_acl*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = add i64 4, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.posix_acl* @kmalloc(i64 %11, i32 %12)
  store %struct.posix_acl* %13, %struct.posix_acl** %6, align 8
  %14 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %15 = icmp ne %struct.posix_acl* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @posix_acl_init(%struct.posix_acl* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  ret %struct.posix_acl* %21
}

declare dso_local %struct.posix_acl* @kmalloc(i64, i32) #1

declare dso_local i32 @posix_acl_init(%struct.posix_acl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
