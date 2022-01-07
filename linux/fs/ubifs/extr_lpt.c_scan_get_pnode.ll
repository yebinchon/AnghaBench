; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_scan_get_pnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_scan_get_pnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_pnode = type { i32, %struct.ubifs_nnode*, i8*, %struct.ubifs_lprops* }
%struct.ubifs_lprops = type { i64, i32 }
%struct.ubifs_info = type { i64, i64, i64, i64, i32, i8* }
%struct.lpt_scan_node = type { i32, %struct.TYPE_2__, %struct.ubifs_pnode }
%struct.TYPE_2__ = type { %struct.ubifs_pnode* }
%struct.ubifs_nnode = type { %struct.ubifs_nbranch* }
%struct.ubifs_nbranch = type { i64, i64, %struct.ubifs_pnode* }

@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_pnode* (%struct.ubifs_info*, %struct.lpt_scan_node*, %struct.ubifs_nnode*, i32)* @scan_get_pnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_pnode* @scan_get_pnode(%struct.ubifs_info* %0, %struct.lpt_scan_node* %1, %struct.ubifs_nnode* %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_pnode*, align 8
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.lpt_scan_node*, align 8
  %8 = alloca %struct.ubifs_nnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_nbranch*, align 8
  %11 = alloca %struct.ubifs_pnode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.lpt_scan_node* %1, %struct.lpt_scan_node** %7, align 8
  store %struct.ubifs_nnode* %2, %struct.ubifs_nnode** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 5
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %12, align 8
  %19 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %20 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %19, i32 0, i32 0
  %21 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %21, i64 %23
  store %struct.ubifs_nbranch* %24, %struct.ubifs_nbranch** %10, align 8
  %25 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %26 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %25, i32 0, i32 2
  %27 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %26, align 8
  store %struct.ubifs_pnode* %27, %struct.ubifs_pnode** %11, align 8
  %28 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  %29 = icmp ne %struct.ubifs_pnode* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %32 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  %34 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %35 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.ubifs_pnode* %33, %struct.ubifs_pnode** %36, align 8
  %37 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  store %struct.ubifs_pnode* %37, %struct.ubifs_pnode** %5, align 8
  br label %191

38:                                               ; preds = %4
  %39 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %40 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %39, i32 0, i32 2
  store %struct.ubifs_pnode* %40, %struct.ubifs_pnode** %11, align 8
  %41 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %42 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  %44 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %45 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store %struct.ubifs_pnode* %43, %struct.ubifs_pnode** %46, align 8
  %47 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  %48 = call i32 @memset(%struct.ubifs_pnode* %47, i32 0, i32 32)
  %49 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %50 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %91

53:                                               ; preds = %38
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %60 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i8* @calc_pnode_num_from_parent(%struct.ubifs_info* %59, %struct.ubifs_nnode* %60, i32 %61)
  %63 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  %64 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %58, %53
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %87, %65
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  %72 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %71, i32 0, i32 3
  %73 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %73, i64 %75
  store %struct.ubifs_lprops* %76, %struct.ubifs_lprops** %15, align 8
  %77 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %78 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %15, align 8
  %81 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %83 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %15, align 8
  %84 = call i32 @ubifs_categorize_lprops(%struct.ubifs_info* %82, %struct.ubifs_lprops* %83)
  %85 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %15, align 8
  %86 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %70
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %66

90:                                               ; preds = %66
  br label %157

91:                                               ; preds = %38
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %93 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %94 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp sge i64 %95, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %91
  %101 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %102 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %105 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sle i64 %103, %106
  br label %108

108:                                              ; preds = %100, %91
  %109 = phi i1 [ false, %91 ], [ %107, %100 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @ubifs_assert(%struct.ubifs_info* %92, i32 %110)
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %113 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %114 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp sge i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %108
  %118 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %119 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %122 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %120, %123
  br label %125

125:                                              ; preds = %117, %108
  %126 = phi i1 [ false, %108 ], [ %124, %117 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 @ubifs_assert(%struct.ubifs_info* %112, i32 %127)
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %130 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %131 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %135 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %138 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ubifs_leb_read(%struct.ubifs_info* %129, i64 %132, i8* %133, i64 %136, i32 %139, i32 1)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %125
  %144 = load i32, i32* %13, align 4
  %145 = call %struct.ubifs_pnode* @ERR_PTR(i32 %144)
  store %struct.ubifs_pnode* %145, %struct.ubifs_pnode** %5, align 8
  br label %191

146:                                              ; preds = %125
  %147 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  %150 = call i32 @unpack_pnode(%struct.ubifs_info* %147, i8* %148, %struct.ubifs_pnode* %149)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load i32, i32* %13, align 4
  %155 = call %struct.ubifs_pnode* @ERR_PTR(i32 %154)
  store %struct.ubifs_pnode* %155, %struct.ubifs_pnode** %5, align 8
  br label %191

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %90
  %158 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %159 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  %160 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @validate_pnode(%struct.ubifs_info* %158, %struct.ubifs_pnode* %159, %struct.ubifs_nnode* %160, i32 %161)
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %157
  %166 = load i32, i32* %13, align 4
  %167 = call %struct.ubifs_pnode* @ERR_PTR(i32 %166)
  store %struct.ubifs_pnode* %167, %struct.ubifs_pnode** %5, align 8
  br label %191

168:                                              ; preds = %157
  %169 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %170 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %168
  %174 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %175 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i8* @calc_pnode_num_from_parent(%struct.ubifs_info* %174, %struct.ubifs_nnode* %175, i32 %176)
  %178 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  %179 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  br label %180

180:                                              ; preds = %173, %168
  %181 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %182 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  %183 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %182, i32 0, i32 1
  store %struct.ubifs_nnode* %181, %struct.ubifs_nnode** %183, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  %186 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %188 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  %189 = call i32 @set_pnode_lnum(%struct.ubifs_info* %187, %struct.ubifs_pnode* %188)
  %190 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %11, align 8
  store %struct.ubifs_pnode* %190, %struct.ubifs_pnode** %5, align 8
  br label %191

191:                                              ; preds = %180, %165, %153, %143, %30
  %192 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  ret %struct.ubifs_pnode* %192
}

declare dso_local i32 @memset(%struct.ubifs_pnode*, i32, i32) #1

declare dso_local i8* @calc_pnode_num_from_parent(%struct.ubifs_info*, %struct.ubifs_nnode*, i32) #1

declare dso_local i32 @ubifs_categorize_lprops(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i64, i8*, i64, i32, i32) #1

declare dso_local %struct.ubifs_pnode* @ERR_PTR(i32) #1

declare dso_local i32 @unpack_pnode(%struct.ubifs_info*, i8*, %struct.ubifs_pnode*) #1

declare dso_local i32 @validate_pnode(%struct.ubifs_info*, %struct.ubifs_pnode*, %struct.ubifs_nnode*, i32) #1

declare dso_local i32 @set_pnode_lnum(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
