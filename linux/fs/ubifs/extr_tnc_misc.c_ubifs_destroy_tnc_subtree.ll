; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_misc.c_ubifs_destroy_tnc_subtree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_misc.c_ubifs_destroy_tnc_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_znode = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_znode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ubifs_destroy_tnc_subtree(%struct.ubifs_info* %0, %struct.ubifs_znode* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_znode*, align 8
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %4, align 8
  %8 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %9 = call %struct.ubifs_znode* @ubifs_tnc_postorder_first(%struct.ubifs_znode* %8)
  store %struct.ubifs_znode* %9, %struct.ubifs_znode** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %12 = call i32 @ubifs_assert(%struct.ubifs_info* %10, %struct.ubifs_znode* %11)
  br label %13

13:                                               ; preds = %2, %79
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %61, %13
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %17 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %14
  %21 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %22 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.ubifs_znode*, %struct.ubifs_znode** %27, align 8
  %29 = icmp ne %struct.ubifs_znode* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %61

31:                                               ; preds = %20
  %32 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %33 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %38 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.ubifs_znode*, %struct.ubifs_znode** %43, align 8
  %45 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = load i64, i64* %6, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %47, %36, %31
  %51 = call i32 (...) @cond_resched()
  %52 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %53 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.ubifs_znode*, %struct.ubifs_znode** %58, align 8
  %60 = call i32 @kfree(%struct.ubifs_znode* %59)
  br label %61

61:                                               ; preds = %50, %30
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %14

64:                                               ; preds = %14
  %65 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %66 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %67 = icmp eq %struct.ubifs_znode* %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %70 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %6, align 8
  br label %75

75:                                               ; preds = %72, %68
  %76 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %77 = call i32 @kfree(%struct.ubifs_znode* %76)
  %78 = load i64, i64* %6, align 8
  ret i64 %78

79:                                               ; preds = %64
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %81 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %82 = call %struct.ubifs_znode* @ubifs_tnc_postorder_next(%struct.ubifs_info* %80, %struct.ubifs_znode* %81)
  store %struct.ubifs_znode* %82, %struct.ubifs_znode** %5, align 8
  br label %13
}

declare dso_local %struct.ubifs_znode* @ubifs_tnc_postorder_first(%struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @kfree(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @ubifs_tnc_postorder_next(%struct.ubifs_info*, %struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
