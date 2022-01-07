; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_get_inline_xattr_pos.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_get_inline_xattr_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }
%struct.ext4_xattr_entry = type { i32 }
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.inode*, %struct.ext4_iloc*)* @ext4_get_inline_xattr_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ext4_get_inline_xattr_pos(%struct.inode* %0, %struct.ext4_iloc* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ext4_iloc*, align 8
  %5 = alloca %struct.ext4_xattr_entry*, align 8
  %6 = alloca %struct.ext4_xattr_ibody_header*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ext4_iloc* %1, %struct.ext4_iloc** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = load %struct.ext4_iloc*, %struct.ext4_iloc** %4, align 8
  %17 = call i64 @ext4_raw_inode(%struct.ext4_iloc* %16)
  %18 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %15, i64 %17)
  store %struct.ext4_xattr_ibody_header* %18, %struct.ext4_xattr_ibody_header** %6, align 8
  %19 = load %struct.ext4_iloc*, %struct.ext4_iloc** %4, align 8
  %20 = call i64 @ext4_raw_inode(%struct.ext4_iloc* %19)
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %21, i64 %26
  %28 = bitcast i8* %27 to %struct.ext4_xattr_entry*
  store %struct.ext4_xattr_entry* %28, %struct.ext4_xattr_entry** %5, align 8
  %29 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %6, align 8
  %30 = call i64 @IFIRST(%struct.ext4_xattr_ibody_header* %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %33 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %31, i64 %36
  ret i8* %37
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, i64) #1

declare dso_local i64 @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local i64 @IFIRST(%struct.ext4_xattr_ibody_header*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
