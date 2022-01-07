; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_name_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_name_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_ea = type { i32, i32 }

@XATTR_OS2_PREFIX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jfs_ea*)* @name_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @name_size(%struct.jfs_ea* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jfs_ea*, align 8
  store %struct.jfs_ea* %0, %struct.jfs_ea** %3, align 8
  %4 = load %struct.jfs_ea*, %struct.jfs_ea** %3, align 8
  %5 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @is_known_namespace(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.jfs_ea*, %struct.jfs_ea** %3, align 8
  %11 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %2, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.jfs_ea*, %struct.jfs_ea** %3, align 8
  %15 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @XATTR_OS2_PREFIX_LEN, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %13, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @is_known_namespace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
