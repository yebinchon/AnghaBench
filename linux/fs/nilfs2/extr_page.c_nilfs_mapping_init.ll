; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_mapping_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_mapping_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32*, i32*, i64, %struct.inode* }
%struct.inode = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@empty_aops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_mapping_init(%struct.address_space* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %4, align 8
  %6 = load %struct.address_space*, %struct.address_space** %3, align 8
  %7 = getelementptr inbounds %struct.address_space, %struct.address_space* %6, i32 0, i32 3
  store %struct.inode* %5, %struct.inode** %7, align 8
  %8 = load %struct.address_space*, %struct.address_space** %3, align 8
  %9 = getelementptr inbounds %struct.address_space, %struct.address_space* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.address_space*, %struct.address_space** %3, align 8
  %11 = load i32, i32* @GFP_NOFS, align 4
  %12 = call i32 @mapping_set_gfp_mask(%struct.address_space* %10, i32 %11)
  %13 = load %struct.address_space*, %struct.address_space** %3, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.address_space*, %struct.address_space** %3, align 8
  %16 = getelementptr inbounds %struct.address_space, %struct.address_space* %15, i32 0, i32 0
  store i32* @empty_aops, i32** %16, align 8
  ret void
}

declare dso_local i32 @mapping_set_gfp_mask(%struct.address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
