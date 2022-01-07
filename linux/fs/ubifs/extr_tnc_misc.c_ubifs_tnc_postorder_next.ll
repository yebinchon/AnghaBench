; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_misc.c_ubifs_tnc_postorder_next.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_misc.c_ubifs_tnc_postorder_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_znode = type { %struct.ubifs_znode*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_znode* @ubifs_tnc_postorder_next(%struct.ubifs_info* %0, %struct.ubifs_znode* %1) #0 {
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %5, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %8 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %9 = call i32 @ubifs_assert(%struct.ubifs_info* %7, %struct.ubifs_znode* %8)
  %10 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %11 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %10, i32 0, i32 0
  %12 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %13 = icmp ne %struct.ubifs_znode* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %3, align 8
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %21 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %20, i32 0, i32 0
  %22 = load %struct.ubifs_znode*, %struct.ubifs_znode** %21, align 8
  %23 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %24 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = call %struct.ubifs_znode* @ubifs_tnc_find_child(%struct.ubifs_znode* %22, i64 %26)
  store %struct.ubifs_znode* %27, %struct.ubifs_znode** %6, align 8
  %28 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %29 = icmp ne %struct.ubifs_znode* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %19
  %31 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %32 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %31, i32 0, i32 0
  %33 = load %struct.ubifs_znode*, %struct.ubifs_znode** %32, align 8
  store %struct.ubifs_znode* %33, %struct.ubifs_znode** %3, align 8
  br label %37

34:                                               ; preds = %19
  %35 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %36 = call %struct.ubifs_znode* @ubifs_tnc_postorder_first(%struct.ubifs_znode* %35)
  store %struct.ubifs_znode* %36, %struct.ubifs_znode** %3, align 8
  br label %37

37:                                               ; preds = %34, %30, %18
  %38 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  ret %struct.ubifs_znode* %38
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_znode* @ubifs_tnc_find_child(%struct.ubifs_znode*, i64) #1

declare dso_local %struct.ubifs_znode* @ubifs_tnc_postorder_first(%struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
