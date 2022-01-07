; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_lpt_lookup_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_lpt_lookup_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_lprops = type { i32, i32, i32 }
%struct.ubifs_info = type { i32, i32, %struct.ubifs_pnode* }
%struct.ubifs_pnode = type { %struct.ubifs_lprops*, i32 }
%struct.ubifs_nnode = type { %struct.ubifs_lprops*, i32 }

@UBIFS_LPT_FANOUT_SHIFT = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"LEB %d, free %d, dirty %d, flags %d\00", align 1
@DIRTY_CNODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ubifs_lprops*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_nnode*, align 8
  %12 = alloca %struct.ubifs_pnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 2
  %15 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %14, align 8
  %16 = icmp ne %struct.ubifs_pnode* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %19 = call i32 @ubifs_read_nnode(%struct.ubifs_info* %18, i32* null, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.ubifs_lprops* @ERR_PTR(i32 %23)
  store %struct.ubifs_lprops* %24, %struct.ubifs_lprops** %3, align 8
  br label %174

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 2
  %29 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %28, align 8
  %30 = bitcast %struct.ubifs_pnode* %29 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %30, %struct.ubifs_nnode** %11, align 8
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %32 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %33 = bitcast %struct.ubifs_nnode* %32 to %struct.ubifs_pnode*
  %34 = call %struct.ubifs_pnode* @dirty_cow_nnode(%struct.ubifs_info* %31, %struct.ubifs_pnode* %33)
  %35 = bitcast %struct.ubifs_pnode* %34 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %35, %struct.ubifs_nnode** %11, align 8
  %36 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %37 = bitcast %struct.ubifs_nnode* %36 to %struct.ubifs_pnode*
  %38 = call i64 @IS_ERR(%struct.ubifs_pnode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %42 = bitcast %struct.ubifs_nnode* %41 to %struct.ubifs_pnode*
  %43 = call %struct.ubifs_lprops* @ERR_CAST(%struct.ubifs_pnode* %42)
  store %struct.ubifs_lprops* %43, %struct.ubifs_lprops** %3, align 8
  br label %174

44:                                               ; preds = %26
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %10, align 4
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %100, %44
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %103

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = ashr i32 %62, %63
  %65 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %64, %66
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %72 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %73 = bitcast %struct.ubifs_nnode* %72 to %struct.ubifs_pnode*
  %74 = load i32, i32* %9, align 4
  %75 = call %struct.ubifs_pnode* @ubifs_get_nnode(%struct.ubifs_info* %71, %struct.ubifs_pnode* %73, i32 %74)
  %76 = bitcast %struct.ubifs_pnode* %75 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %76, %struct.ubifs_nnode** %11, align 8
  %77 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %78 = bitcast %struct.ubifs_nnode* %77 to %struct.ubifs_pnode*
  %79 = call i64 @IS_ERR(%struct.ubifs_pnode* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %61
  %82 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %83 = bitcast %struct.ubifs_nnode* %82 to %struct.ubifs_pnode*
  %84 = call %struct.ubifs_lprops* @ERR_CAST(%struct.ubifs_pnode* %83)
  store %struct.ubifs_lprops* %84, %struct.ubifs_lprops** %3, align 8
  br label %174

85:                                               ; preds = %61
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %87 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %88 = bitcast %struct.ubifs_nnode* %87 to %struct.ubifs_pnode*
  %89 = call %struct.ubifs_pnode* @dirty_cow_nnode(%struct.ubifs_info* %86, %struct.ubifs_pnode* %88)
  %90 = bitcast %struct.ubifs_pnode* %89 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %90, %struct.ubifs_nnode** %11, align 8
  %91 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %92 = bitcast %struct.ubifs_nnode* %91 to %struct.ubifs_pnode*
  %93 = call i64 @IS_ERR(%struct.ubifs_pnode* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %97 = bitcast %struct.ubifs_nnode* %96 to %struct.ubifs_pnode*
  %98 = call %struct.ubifs_lprops* @ERR_CAST(%struct.ubifs_pnode* %97)
  store %struct.ubifs_lprops* %98, %struct.ubifs_lprops** %3, align 8
  br label %174

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %55

103:                                              ; preds = %55
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %10, align 4
  %106 = ashr i32 %104, %105
  %107 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %108 = sub nsw i32 %107, 1
  %109 = and i32 %106, %108
  store i32 %109, i32* %9, align 4
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %111 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %112 = bitcast %struct.ubifs_nnode* %111 to %struct.ubifs_pnode*
  %113 = load i32, i32* %9, align 4
  %114 = call %struct.ubifs_pnode* @ubifs_get_pnode(%struct.ubifs_info* %110, %struct.ubifs_pnode* %112, i32 %113)
  store %struct.ubifs_pnode* %114, %struct.ubifs_pnode** %12, align 8
  %115 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %116 = call i64 @IS_ERR(%struct.ubifs_pnode* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %103
  %119 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %120 = call %struct.ubifs_lprops* @ERR_CAST(%struct.ubifs_pnode* %119)
  store %struct.ubifs_lprops* %120, %struct.ubifs_lprops** %3, align 8
  br label %174

121:                                              ; preds = %103
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %123 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %124 = call %struct.ubifs_pnode* @dirty_cow_pnode(%struct.ubifs_info* %122, %struct.ubifs_pnode* %123)
  store %struct.ubifs_pnode* %124, %struct.ubifs_pnode** %12, align 8
  %125 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %126 = call i64 @IS_ERR(%struct.ubifs_pnode* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %130 = call %struct.ubifs_lprops* @ERR_CAST(%struct.ubifs_pnode* %129)
  store %struct.ubifs_lprops* %130, %struct.ubifs_lprops** %3, align 8
  br label %174

131:                                              ; preds = %121
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %134 = sub nsw i32 %133, 1
  %135 = and i32 %132, %134
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %138 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %137, i32 0, i32 0
  %139 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %139, i64 %141
  %143 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %146 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %145, i32 0, i32 0
  %147 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %147, i64 %149
  %151 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %154 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %153, i32 0, i32 0
  %155 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %155, i64 %157
  %159 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @dbg_lp(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %144, i32 %152, i32 %160)
  %162 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %163 = load i32, i32* @DIRTY_CNODE, align 4
  %164 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %165 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %164, i32 0, i32 1
  %166 = call i32 @test_bit(i32 %163, i32* %165)
  %167 = call i32 @ubifs_assert(%struct.ubifs_info* %162, i32 %166)
  %168 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %169 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %168, i32 0, i32 0
  %170 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %170, i64 %172
  store %struct.ubifs_lprops* %173, %struct.ubifs_lprops** %3, align 8
  br label %174

174:                                              ; preds = %131, %128, %118, %95, %81, %40, %22
  %175 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %3, align 8
  ret %struct.ubifs_lprops* %175
}

declare dso_local i32 @ubifs_read_nnode(%struct.ubifs_info*, i32*, i32) #1

declare dso_local %struct.ubifs_lprops* @ERR_PTR(i32) #1

declare dso_local %struct.ubifs_pnode* @dirty_cow_nnode(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_pnode*) #1

declare dso_local %struct.ubifs_lprops* @ERR_CAST(%struct.ubifs_pnode*) #1

declare dso_local %struct.ubifs_pnode* @ubifs_get_nnode(%struct.ubifs_info*, %struct.ubifs_pnode*, i32) #1

declare dso_local %struct.ubifs_pnode* @ubifs_get_pnode(%struct.ubifs_info*, %struct.ubifs_pnode*, i32) #1

declare dso_local %struct.ubifs_pnode* @dirty_cow_pnode(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

declare dso_local i32 @dbg_lp(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
