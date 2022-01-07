; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_bfind.c_hfs_brec_goto.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_bfind.c_hfs_brec_goto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_find_data = type { i32, %struct.hfs_bnode*, i32, i64, i64, i64, i64 }
%struct.hfs_bnode = type { i32, i32, i32, %struct.hfs_btree* }
%struct.hfs_btree = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_brec_goto(%struct.hfs_find_data* %0, i32 %1) #0 {
  %3 = alloca %struct.hfs_find_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfs_btree*, align 8
  %6 = alloca %struct.hfs_bnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.hfs_find_data* %0, %struct.hfs_find_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %13 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 1
  %14 = load %struct.hfs_bnode*, %struct.hfs_bnode** %13, align 8
  store %struct.hfs_bnode* %14, %struct.hfs_bnode** %6, align 8
  %15 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %16 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %15, i32 0, i32 3
  %17 = load %struct.hfs_btree*, %struct.hfs_btree** %16, align 8
  store %struct.hfs_btree* %17, %struct.hfs_btree** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %62, %20
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %26 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %31 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %37 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %41 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %43 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %29
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %159

50:                                               ; preds = %29
  %51 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %52 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %51)
  %53 = load %struct.hfs_btree*, %struct.hfs_btree** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %53, i32 %54)
  store %struct.hfs_bnode* %55, %struct.hfs_bnode** %6, align 8
  %56 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %57 = call i64 @IS_ERR(%struct.hfs_bnode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %61 = call i32 @PTR_ERR(%struct.hfs_bnode* %60)
  store i32 %61, i32* %8, align 4
  store %struct.hfs_bnode* null, %struct.hfs_bnode** %6, align 8
  br label %159

62:                                               ; preds = %50
  br label %23

63:                                               ; preds = %23
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %66 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %119

69:                                               ; preds = %2
  br label %70

70:                                               ; preds = %112, %69
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %73 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %76 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %74, %77
  %79 = icmp sge i32 %71, %78
  br i1 %79, label %80, label %113

80:                                               ; preds = %70
  %81 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %82 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %85 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %83, %86
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %4, align 4
  %90 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %91 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %93 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %80
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %8, align 4
  br label %159

100:                                              ; preds = %80
  %101 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %102 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %101)
  %103 = load %struct.hfs_btree*, %struct.hfs_btree** %5, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %103, i32 %104)
  store %struct.hfs_bnode* %105, %struct.hfs_bnode** %6, align 8
  %106 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %107 = call i64 @IS_ERR(%struct.hfs_bnode* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %111 = call i32 @PTR_ERR(%struct.hfs_bnode* %110)
  store i32 %111, i32* %8, align 4
  store %struct.hfs_bnode* null, %struct.hfs_bnode** %6, align 8
  br label %159

112:                                              ; preds = %100
  br label %70

113:                                              ; preds = %70
  %114 = load i32, i32* %4, align 4
  %115 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %116 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %63
  %120 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %121 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %122 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @hfs_brec_lenoff(%struct.hfs_bnode* %120, i32 %123, i64* %9)
  store i64 %124, i64* %10, align 8
  %125 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %126 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %127 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @hfs_brec_keylen(%struct.hfs_bnode* %125, i32 %128)
  store i64 %129, i64* %11, align 8
  %130 = load i64, i64* %11, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %119
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %8, align 4
  br label %159

135:                                              ; preds = %119
  %136 = load i64, i64* %9, align 8
  %137 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %138 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %137, i32 0, i32 6
  store i64 %136, i64* %138, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %141 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %140, i32 0, i32 5
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* %11, align 8
  %144 = add nsw i64 %142, %143
  %145 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %146 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %145, i32 0, i32 4
  store i64 %144, i64* %146, align 8
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* %11, align 8
  %149 = sub nsw i64 %147, %148
  %150 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %151 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %150, i32 0, i32 3
  store i64 %149, i64* %151, align 8
  %152 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %153 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %154 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load i64, i64* %11, align 8
  %158 = call i32 @hfs_bnode_read(%struct.hfs_bnode* %152, i32 %155, i64 %156, i64 %157)
  br label %159

159:                                              ; preds = %135, %132, %109, %97, %59, %47
  %160 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %161 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %162 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %161, i32 0, i32 1
  store %struct.hfs_bnode* %160, %struct.hfs_bnode** %162, align 8
  %163 = load i32, i32* %8, align 4
  ret i32 %163
}

declare dso_local i32 @hfs_bnode_put(%struct.hfs_bnode*) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree*, i32) #1

declare dso_local i64 @IS_ERR(%struct.hfs_bnode*) #1

declare dso_local i32 @PTR_ERR(%struct.hfs_bnode*) #1

declare dso_local i64 @hfs_brec_lenoff(%struct.hfs_bnode*, i32, i64*) #1

declare dso_local i64 @hfs_brec_keylen(%struct.hfs_bnode*, i32) #1

declare dso_local i32 @hfs_bnode_read(%struct.hfs_bnode*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
