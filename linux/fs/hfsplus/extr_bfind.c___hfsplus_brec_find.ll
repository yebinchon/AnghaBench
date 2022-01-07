; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_bfind.c___hfsplus_brec_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_bfind.c___hfsplus_brec_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i32 }
%struct.hfs_find_data = type { i32, i64, i64, i64, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hfs_brec_find(%struct.hfs_bnode* %0, %struct.hfs_find_data* %1, i64 (%struct.hfs_bnode*, %struct.hfs_find_data*, i32*, i32*, i32*)* %2) #0 {
  %4 = alloca %struct.hfs_bnode*, align 8
  %5 = alloca %struct.hfs_find_data*, align 8
  %6 = alloca i64 (%struct.hfs_bnode*, %struct.hfs_find_data*, i32*, i32*, i32*)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %4, align 8
  store %struct.hfs_find_data* %1, %struct.hfs_find_data** %5, align 8
  store i64 (%struct.hfs_bnode*, %struct.hfs_find_data*, i32*, i32*, i32*)* %2, i64 (%struct.hfs_bnode*, %struct.hfs_find_data*, i32*, i32*, i32*)** %6, align 8
  %14 = load i64 (%struct.hfs_bnode*, %struct.hfs_find_data*, i32*, i32*, i32*)*, i64 (%struct.hfs_bnode*, %struct.hfs_find_data*, i32*, i32*, i32*)** %6, align 8
  %15 = icmp ne i64 (%struct.hfs_bnode*, %struct.hfs_find_data*, i32*, i32*, i32*)* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  store i32 0, i32* %11, align 4
  %19 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %20 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %56, %3
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %26, %27
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %10, align 4
  %30 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @hfs_brec_lenoff(%struct.hfs_bnode* %30, i32 %31, i64* %7)
  store i64 %32, i64* %8, align 8
  %33 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @hfs_brec_keylen(%struct.hfs_bnode* %33, i32 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %13, align 4
  br label %108

41:                                               ; preds = %25
  %42 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %43 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %44 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @hfs_bnode_read(%struct.hfs_bnode* %42, i32 %45, i64 %46, i64 %47)
  %49 = load i64 (%struct.hfs_bnode*, %struct.hfs_find_data*, i32*, i32*, i32*)*, i64 (%struct.hfs_bnode*, %struct.hfs_find_data*, i32*, i32*, i32*)** %6, align 8
  %50 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %51 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %52 = call i64 %49(%struct.hfs_bnode* %50, %struct.hfs_find_data* %51, i32* %11, i32* %12, i32* %10)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  store i32 0, i32* %13, align 4
  br label %88

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %25, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @hfs_brec_lenoff(%struct.hfs_bnode* %68, i32 %69, i64* %7)
  store i64 %70, i64* %8, align 8
  %71 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i64 @hfs_brec_keylen(%struct.hfs_bnode* %71, i32 %72)
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %13, align 4
  br label %108

79:                                               ; preds = %67
  %80 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %81 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %82 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @hfs_bnode_read(%struct.hfs_bnode* %80, i32 %83, i64 %84, i64 %85)
  br label %87

87:                                               ; preds = %79, %64, %60
  br label %88

88:                                               ; preds = %87, %54
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %91 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %94 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %93, i32 0, i32 4
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %97 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %9, align 8
  %100 = add nsw i64 %98, %99
  %101 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %102 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = sub nsw i64 %103, %104
  %106 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %107 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %88, %76, %38
  %109 = load i32, i32* %13, align 4
  ret i32 %109
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @hfs_brec_lenoff(%struct.hfs_bnode*, i32, i64*) #1

declare dso_local i64 @hfs_brec_keylen(%struct.hfs_bnode*, i32) #1

declare dso_local i32 @hfs_bnode_read(%struct.hfs_bnode*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
