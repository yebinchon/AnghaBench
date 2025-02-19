; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_free_obsolete_znodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_free_obsolete_znodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.ubifs_znode* }
%struct.ubifs_znode = type { %struct.ubifs_znode* }

@ubifs_clean_zn_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*)* @free_obsolete_znodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_obsolete_znodes(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %5 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %6 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %5, i32 0, i32 1
  %7 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  store %struct.ubifs_znode* %7, %struct.ubifs_znode** %4, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  store %struct.ubifs_znode* %9, %struct.ubifs_znode** %3, align 8
  %10 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %11 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %10, i32 0, i32 0
  %12 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  store %struct.ubifs_znode* %12, %struct.ubifs_znode** %4, align 8
  %13 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %14 = call i64 @ubifs_zn_obsolete(%struct.ubifs_znode* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %18 = call i32 @kfree(%struct.ubifs_znode* %17)
  br label %26

19:                                               ; preds = %8
  %20 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %20, i32 0, i32 0
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %21, align 8
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 0
  %24 = call i32 @atomic_long_inc(i32* %23)
  %25 = call i32 @atomic_long_inc(i32* @ubifs_clean_zn_cnt)
  br label %26

26:                                               ; preds = %19, %16
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 1
  %31 = load %struct.ubifs_znode*, %struct.ubifs_znode** %30, align 8
  %32 = icmp ne %struct.ubifs_znode* %28, %31
  br i1 %32, label %8, label %33

33:                                               ; preds = %27
  ret void
}

declare dso_local i64 @ubifs_zn_obsolete(%struct.ubifs_znode*) #1

declare dso_local i32 @kfree(%struct.ubifs_znode*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
