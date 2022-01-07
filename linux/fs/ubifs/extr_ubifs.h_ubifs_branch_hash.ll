; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_ubifs.h_ubifs_branch_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_ubifs.h_ubifs_branch_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_branch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ubifs_info*, %struct.ubifs_branch*)* @ubifs_branch_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ubifs_branch_hash(%struct.ubifs_info* %0, %struct.ubifs_branch* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_branch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_branch* %1, %struct.ubifs_branch** %4, align 8
  %5 = load %struct.ubifs_branch*, %struct.ubifs_branch** %4, align 8
  %6 = bitcast %struct.ubifs_branch* %5 to i8*
  %7 = getelementptr i8, i8* %6, i64 4
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr i8, i8* %7, i64 %11
  ret i8* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
