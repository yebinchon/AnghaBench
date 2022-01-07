; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_scan_get_nnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_scan_get_nnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, i8* }
%struct.lpt_scan_node = type { i32, %struct.TYPE_2__, %struct.ubifs_nnode }
%struct.TYPE_2__ = type { %struct.ubifs_nnode* }
%struct.ubifs_nnode = type { i32, %struct.ubifs_nnode*, i64, i8*, %struct.ubifs_nbranch* }
%struct.ubifs_nbranch = type { i64, i32, %struct.ubifs_nnode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_nnode* (%struct.ubifs_info*, %struct.lpt_scan_node*, %struct.ubifs_nnode*, i32)* @scan_get_nnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_nnode* @scan_get_nnode(%struct.ubifs_info* %0, %struct.lpt_scan_node* %1, %struct.ubifs_nnode* %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_nnode*, align 8
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.lpt_scan_node*, align 8
  %8 = alloca %struct.ubifs_nnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_nbranch*, align 8
  %11 = alloca %struct.ubifs_nnode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.lpt_scan_node* %1, %struct.lpt_scan_node** %7, align 8
  store %struct.ubifs_nnode* %2, %struct.ubifs_nnode** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %12, align 8
  %17 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %18 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %17, i32 0, i32 4
  %19 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %19, i64 %21
  store %struct.ubifs_nbranch* %22, %struct.ubifs_nbranch** %10, align 8
  %23 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %24 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %23, i32 0, i32 2
  %25 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %24, align 8
  store %struct.ubifs_nnode* %25, %struct.ubifs_nnode** %11, align 8
  %26 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %27 = icmp ne %struct.ubifs_nnode* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %30 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %32 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %33 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.ubifs_nnode* %31, %struct.ubifs_nnode** %34, align 8
  %35 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  store %struct.ubifs_nnode* %35, %struct.ubifs_nnode** %5, align 8
  br label %130

36:                                               ; preds = %4
  %37 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %38 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %37, i32 0, i32 2
  store %struct.ubifs_nnode* %38, %struct.ubifs_nnode** %11, align 8
  %39 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %40 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %42 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %43 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store %struct.ubifs_nnode* %41, %struct.ubifs_nnode** %44, align 8
  %45 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %46 = call i32 @memset(%struct.ubifs_nnode* %45, i32 0, i32 40)
  %47 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %48 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %36
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %58 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @calc_nnode_num_from_parent(%struct.ubifs_info* %57, %struct.ubifs_nnode* %58, i32 %59)
  %61 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %62 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %56, %51
  br label %93

64:                                               ; preds = %36
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %66 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %67 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %71 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ubifs_leb_read(%struct.ubifs_info* %65, i64 %68, i8* %69, i32 %72, i32 %75, i32 1)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  %80 = load i32, i32* %13, align 4
  %81 = call %struct.ubifs_nnode* @ERR_PTR(i32 %80)
  store %struct.ubifs_nnode* %81, %struct.ubifs_nnode** %5, align 8
  br label %130

82:                                               ; preds = %64
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %86 = call i32 @ubifs_unpack_nnode(%struct.ubifs_info* %83, i8* %84, %struct.ubifs_nnode* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  %91 = call %struct.ubifs_nnode* @ERR_PTR(i32 %90)
  store %struct.ubifs_nnode* %91, %struct.ubifs_nnode** %5, align 8
  br label %130

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %63
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %95 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %96 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @validate_nnode(%struct.ubifs_info* %94, %struct.ubifs_nnode* %95, %struct.ubifs_nnode* %96, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* %13, align 4
  %103 = call %struct.ubifs_nnode* @ERR_PTR(i32 %102)
  store %struct.ubifs_nnode* %103, %struct.ubifs_nnode** %5, align 8
  br label %130

104:                                              ; preds = %93
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %106 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %104
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %111 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i8* @calc_nnode_num_from_parent(%struct.ubifs_info* %110, %struct.ubifs_nnode* %111, i32 %112)
  %114 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %115 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %109, %104
  %117 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %118 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %119, 1
  %121 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %122 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  %123 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %124 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %125 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %124, i32 0, i32 1
  store %struct.ubifs_nnode* %123, %struct.ubifs_nnode** %125, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %128 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  store %struct.ubifs_nnode* %129, %struct.ubifs_nnode** %5, align 8
  br label %130

130:                                              ; preds = %116, %101, %89, %79, %28
  %131 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  ret %struct.ubifs_nnode* %131
}

declare dso_local i32 @memset(%struct.ubifs_nnode*, i32, i32) #1

declare dso_local i8* @calc_nnode_num_from_parent(%struct.ubifs_info*, %struct.ubifs_nnode*, i32) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i64, i8*, i32, i32, i32) #1

declare dso_local %struct.ubifs_nnode* @ERR_PTR(i32) #1

declare dso_local i32 @ubifs_unpack_nnode(%struct.ubifs_info*, i8*, %struct.ubifs_nnode*) #1

declare dso_local i32 @validate_nnode(%struct.ubifs_info*, %struct.ubifs_nnode*, %struct.ubifs_nnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
