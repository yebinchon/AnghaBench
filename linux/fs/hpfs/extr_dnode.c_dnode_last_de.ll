; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_dnode_last_de.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_dnode_last_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpfs_dirent = type { i32 }
%struct.dnode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hpfs_dirent* (%struct.dnode*)* @dnode_last_de to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hpfs_dirent* @dnode_last_de(%struct.dnode* %0) #0 {
  %2 = alloca %struct.dnode*, align 8
  %3 = alloca %struct.hpfs_dirent*, align 8
  %4 = alloca %struct.hpfs_dirent*, align 8
  %5 = alloca %struct.hpfs_dirent*, align 8
  store %struct.dnode* %0, %struct.dnode** %2, align 8
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  %6 = load %struct.dnode*, %struct.dnode** %2, align 8
  %7 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %6)
  store %struct.hpfs_dirent* %7, %struct.hpfs_dirent** %4, align 8
  %8 = load %struct.dnode*, %struct.dnode** %2, align 8
  %9 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %8)
  store %struct.hpfs_dirent* %9, %struct.hpfs_dirent** %3, align 8
  br label %10

10:                                               ; preds = %16, %1
  %11 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %3, align 8
  %12 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %4, align 8
  %13 = icmp ult %struct.hpfs_dirent* %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %3, align 8
  store %struct.hpfs_dirent* %15, %struct.hpfs_dirent** %5, align 8
  br label %16

16:                                               ; preds = %14
  %17 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %3, align 8
  %18 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %17)
  store %struct.hpfs_dirent* %18, %struct.hpfs_dirent** %3, align 8
  br label %10

19:                                               ; preds = %10
  %20 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %5, align 8
  ret %struct.hpfs_dirent* %20
}

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
