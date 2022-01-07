; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_tnc_next.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_tnc_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_znode = type { i32, i32, i64, %struct.ubifs_znode* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_znode**, i32*)* @tnc_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tnc_next(%struct.ubifs_info* %0, %struct.ubifs_znode** %1, i32* %2) #0 {
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
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %19 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %81

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %75
  %27 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %28 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %27, i32 0, i32 3
  %29 = load %struct.ubifs_znode*, %struct.ubifs_znode** %28, align 8
  store %struct.ubifs_znode* %29, %struct.ubifs_znode** %10, align 8
  %30 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %31 = icmp ne %struct.ubifs_znode* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %81

35:                                               ; preds = %26
  %36 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %37 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  %40 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  store %struct.ubifs_znode* %40, %struct.ubifs_znode** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %43 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %35
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %48 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %47, %struct.ubifs_znode* %48, i32 %49)
  store %struct.ubifs_znode* %50, %struct.ubifs_znode** %8, align 8
  %51 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %52 = call i64 @IS_ERR(%struct.ubifs_znode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %56 = call i32 @PTR_ERR(%struct.ubifs_znode* %55)
  store i32 %56, i32* %4, align 4
  br label %81

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %73, %57
  %59 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %60 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %65 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %66 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %64, %struct.ubifs_znode* %65, i32 0)
  store %struct.ubifs_znode* %66, %struct.ubifs_znode** %8, align 8
  %67 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %68 = call i64 @IS_ERR(%struct.ubifs_znode* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %72 = call i32 @PTR_ERR(%struct.ubifs_znode* %71)
  store i32 %72, i32* %4, align 4
  br label %81

73:                                               ; preds = %63
  br label %58

74:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %76

75:                                               ; preds = %35
  br label %26

76:                                               ; preds = %74
  %77 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %78 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %6, align 8
  store %struct.ubifs_znode* %77, %struct.ubifs_znode** %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %76, %70, %54, %32, %22
  %82 = load i32, i32* %4, align 4
  ret i32 %82
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
