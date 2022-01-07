; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_get_znode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_get_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_znode = type { %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { %struct.ubifs_znode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_znode* (%struct.ubifs_info*, %struct.ubifs_znode*, i32)* @get_znode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %0, %struct.ubifs_znode* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %9 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %8, i32 0, i32 0
  %10 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %10, i64 %12
  store %struct.ubifs_zbranch* %13, %struct.ubifs_zbranch** %7, align 8
  %14 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %15 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %14, i32 0, i32 0
  %16 = load %struct.ubifs_znode*, %struct.ubifs_znode** %15, align 8
  %17 = icmp ne %struct.ubifs_znode* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %20 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %19, i32 0, i32 0
  %21 = load %struct.ubifs_znode*, %struct.ubifs_znode** %20, align 8
  store %struct.ubifs_znode* %21, %struct.ubifs_znode** %5, align 8
  br label %28

22:                                               ; preds = %3
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %24 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %25 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info* %23, %struct.ubifs_zbranch* %24, %struct.ubifs_znode* %25, i32 %26)
  store %struct.ubifs_znode* %27, %struct.ubifs_znode** %5, align 8
  br label %28

28:                                               ; preds = %22, %18
  %29 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  ret %struct.ubifs_znode* %29
}

declare dso_local %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info*, %struct.ubifs_zbranch*, %struct.ubifs_znode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
