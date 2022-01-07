; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_header_valid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_header_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_xattr_header = type { i64, i64 }

@EXT2_XATTR_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext2_xattr_header*)* @ext2_xattr_header_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_xattr_header_valid(%struct.ext2_xattr_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ext2_xattr_header*, align 8
  store %struct.ext2_xattr_header* %0, %struct.ext2_xattr_header** %3, align 8
  %4 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %3, align 8
  %5 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i32, i32* @EXT2_XATTR_MAGIC, align 4
  %8 = call i64 @cpu_to_le32(i32 %7)
  %9 = icmp ne i64 %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %3, align 8
  %12 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @cpu_to_le32(i32 1)
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %18

17:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
