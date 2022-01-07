; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_reiserfs_parse_alloc_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_reiserfs_parse_alloc_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"concentrating_formatted_nodes\00", align 1
@concentrating_formatted_nodes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"displacing_large_files\00", align 1
@displacing_large_files = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"displacing_new_packing_localities\00", align 1
@displacing_new_packing_localities = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"old_hashed_relocation\00", align 1
@old_hashed_relocation = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"new_hashed_relocation\00", align 1
@new_hashed_relocation = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"dirid_groups\00", align 1
@dirid_groups = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"oid_groups\00", align 1
@oid_groups = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"packing_groups\00", align 1
@packing_groups = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"hashed_formatted_nodes\00", align 1
@hashed_formatted_nodes = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"skip_busy\00", align 1
@skip_busy = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"hundredth_slices\00", align 1
@hundredth_slices = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"old_way\00", align 1
@old_way = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"displace_based_on_dirid\00", align 1
@displace_based_on_dirid = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"preallocmin\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"preallocsize\00", align 1
@PREALLOCATION_SIZE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"zam-4001\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"unknown option - %s\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"allocator options = [%08x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_parse_alloc_options(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %201, %178, %159, %152, %145, %138, %131, %124, %117, %110, %103, %96, %89, %79, %60, %2
  %14 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %211

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 61)
  store i8* %18, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %7, align 8
  store i8 0, i8* %21, align 1
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %61, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @concentrating_formatted_nodes, align 4
  %29 = call i32 @SET_OPTION(i32 %28)
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @simple_strtoul(i8* %38, i8** %7, i32 0)
  br label %41

40:                                               ; preds = %32, %27
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ 10, %40 ]
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 100
  br i1 %47, label %48, label %53

48:                                               ; preds = %45, %41
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 10, i32* %52, align 8
  br label %60

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = sdiv i32 100, %54
  %56 = load %struct.super_block*, %struct.super_block** %4, align 8
  %57 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  br label %60

60:                                               ; preds = %53, %48
  br label %13

61:                                               ; preds = %23
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @displacing_large_files, align 4
  %67 = call i32 @SET_OPTION(i32 %66)
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @simple_strtoul(i8* %76, i8** %7, i32 0)
  br label %79

78:                                               ; preds = %70, %65
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i32 [ %77, %75 ], [ 16, %78 ]
  %81 = load %struct.super_block*, %struct.super_block** %4, align 8
  %82 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %81)
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  br label %13

85:                                               ; preds = %61
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* @displacing_new_packing_localities, align 4
  %91 = call i32 @SET_OPTION(i32 %90)
  br label %13

92:                                               ; preds = %85
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @old_hashed_relocation, align 4
  %98 = call i32 @SET_OPTION(i32 %97)
  br label %13

99:                                               ; preds = %92
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @new_hashed_relocation, align 4
  %105 = call i32 @SET_OPTION(i32 %104)
  br label %13

106:                                              ; preds = %99
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* @dirid_groups, align 4
  %112 = call i32 @SET_OPTION(i32 %111)
  br label %13

113:                                              ; preds = %106
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* @oid_groups, align 4
  %119 = call i32 @SET_OPTION(i32 %118)
  br label %13

120:                                              ; preds = %113
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* @packing_groups, align 4
  %126 = call i32 @SET_OPTION(i32 %125)
  br label %13

127:                                              ; preds = %120
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* @hashed_formatted_nodes, align 4
  %133 = call i32 @SET_OPTION(i32 %132)
  br label %13

134:                                              ; preds = %127
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @strcmp(i8* %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* @skip_busy, align 4
  %140 = call i32 @SET_OPTION(i32 %139)
  br label %13

141:                                              ; preds = %134
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* @hundredth_slices, align 4
  %147 = call i32 @SET_OPTION(i32 %146)
  br label %13

148:                                              ; preds = %141
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* @old_way, align 4
  %154 = call i32 @SET_OPTION(i32 %153)
  br label %13

155:                                              ; preds = %148
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* @displace_based_on_dirid, align 4
  %161 = call i32 @SET_OPTION(i32 %160)
  br label %13

162:                                              ; preds = %155
  %163 = load i8*, i8** %6, align 8
  %164 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %184, label %166

166:                                              ; preds = %162
  %167 = load i8*, i8** %7, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i8*, i8** %7, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 @simple_strtoul(i8* %175, i8** %7, i32 0)
  br label %178

177:                                              ; preds = %169, %166
  br label %178

178:                                              ; preds = %177, %174
  %179 = phi i32 [ %176, %174 ], [ 4, %177 ]
  %180 = load %struct.super_block*, %struct.super_block** %4, align 8
  %181 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %180)
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  store i32 %179, i32* %183, align 8
  br label %13

184:                                              ; preds = %162
  %185 = load i8*, i8** %6, align 8
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %207, label %188

188:                                              ; preds = %184
  %189 = load i8*, i8** %7, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %199

191:                                              ; preds = %188
  %192 = load i8*, i8** %7, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load i8*, i8** %7, align 8
  %198 = call i32 @simple_strtoul(i8* %197, i8** %7, i32 0)
  br label %201

199:                                              ; preds = %191, %188
  %200 = load i32, i32* @PREALLOCATION_SIZE, align 4
  br label %201

201:                                              ; preds = %199, %196
  %202 = phi i32 [ %198, %196 ], [ %200, %199 ]
  %203 = load %struct.super_block*, %struct.super_block** %4, align 8
  %204 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %203)
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  store i32 %202, i32* %206, align 4
  br label %13

207:                                              ; preds = %184
  %208 = load %struct.super_block*, %struct.super_block** %4, align 8
  %209 = load i8*, i8** %6, align 8
  %210 = call i32 @reiserfs_warning(%struct.super_block* %208, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* %209)
  store i32 1, i32* %3, align 4
  br label %216

211:                                              ; preds = %13
  %212 = load %struct.super_block*, %struct.super_block** %4, align 8
  %213 = load %struct.super_block*, %struct.super_block** %4, align 8
  %214 = call i32 @SB_ALLOC_OPTS(%struct.super_block* %213)
  %215 = call i32 @reiserfs_info(%struct.super_block* %212, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %214)
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %211, %207
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local %struct.TYPE_4__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @SET_OPTION(i32) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, i8*) #1

declare dso_local i32 @reiserfs_info(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @SB_ALLOC_OPTS(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
