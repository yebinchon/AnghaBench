; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_tnc_prev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_tnc_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_znode = type { i32, i64, i32, %struct.ubifs_znode* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_znode**, i32*)* @tnc_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tnc_prev(%struct.ubifs_info* %0, %struct.ubifs_znode** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_znode**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ubifs_znode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_znode** %1, %struct.ubifs_znode*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %6, align 8
  %12 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  store %struct.ubifs_znode* %12, %struct.ubifs_znode** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %83

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %77
  %23 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %24 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %23, i32 0, i32 3
  %25 = load %struct.ubifs_znode*, %struct.ubifs_znode** %24, align 8
  store %struct.ubifs_znode* %25, %struct.ubifs_znode** %10, align 8
  %26 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %27 = icmp ne %struct.ubifs_znode* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %83

31:                                               ; preds = %22
  %32 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %33 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  store %struct.ubifs_znode* %36, %struct.ubifs_znode** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %31
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %41 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %40, %struct.ubifs_znode* %41, i32 %42)
  store %struct.ubifs_znode* %43, %struct.ubifs_znode** %8, align 8
  %44 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %45 = call i64 @IS_ERR(%struct.ubifs_znode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %49 = call i32 @PTR_ERR(%struct.ubifs_znode* %48)
  store i32 %49, i32* %4, align 4
  br label %83

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %71, %50
  %52 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %53 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %58 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %62 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %61, %struct.ubifs_znode* %62, i32 %63)
  store %struct.ubifs_znode* %64, %struct.ubifs_znode** %8, align 8
  %65 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %66 = call i64 @IS_ERR(%struct.ubifs_znode* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %70 = call i32 @PTR_ERR(%struct.ubifs_znode* %69)
  store i32 %70, i32* %4, align 4
  br label %83

71:                                               ; preds = %56
  br label %51

72:                                               ; preds = %51
  %73 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %74 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %78

77:                                               ; preds = %31
  br label %22

78:                                               ; preds = %72
  %79 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %80 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %6, align 8
  store %struct.ubifs_znode* %79, %struct.ubifs_znode** %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %68, %47, %28, %17
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.ubifs_znode* @get_znode(%struct.ubifs_info*, %struct.ubifs_znode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
