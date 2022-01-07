; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_show_alloc_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_show_alloc_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@_ALLOC_skip_busy = common dso_local global i32 0, align 4
@_ALLOC_dirid_groups = common dso_local global i32 0, align 4
@_ALLOC_packing_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",alloc=\00", align 1
@concentrating_formatted_nodes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"concentrating_formatted_nodes=%d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"concentrating_formatted_nodes\00", align 1
@displacing_large_files = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"displacing_large_files=%lu\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"displacing_large_files\00", align 1
@displacing_new_packing_localities = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"displacing_new_packing_localities\00", align 1
@old_hashed_relocation = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"old_hashed_relocation\00", align 1
@new_hashed_relocation = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"new_hashed_relocation\00", align 1
@dirid_groups = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"dirid_groups\00", align 1
@oid_groups = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"oid_groups\00", align 1
@packing_groups = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"packing_groups\00", align 1
@hashed_formatted_nodes = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"hashed_formatted_nodes\00", align 1
@skip_busy = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"skip_busy\00", align 1
@hundredth_slices = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"hundredth_slices\00", align 1
@old_way = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"old_way\00", align 1
@displace_based_on_dirid = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"displace_based_on_dirid\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"preallocmin=%d\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"preallocsize=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_alloc_options(%struct.seq_file* %0, %struct.super_block* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.super_block* %1, %struct.super_block** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = call i32 @SB_ALLOC_OPTS(%struct.super_block* %6)
  %8 = load i32, i32* @_ALLOC_skip_busy, align 4
  %9 = shl i32 1, %8
  %10 = load i32, i32* @_ALLOC_dirid_groups, align 4
  %11 = shl i32 1, %10
  %12 = or i32 %9, %11
  %13 = load i32, i32* @_ALLOC_packing_groups, align 4
  %14 = shl i32 1, %13
  %15 = or i32 %12, %14
  %16 = icmp eq i32 %7, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %217

18:                                               ; preds = %2
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 @seq_puts(%struct.seq_file* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @concentrating_formatted_nodes, align 4
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = call i64 @TEST_OPTION(i32 %21, %struct.super_block* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %18
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = call i32 @print_sep(%struct.seq_file* %26, i32* %5)
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 10
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.super_block*, %struct.super_block** %4, align 8
  %37 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 100, %40
  %42 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %46

43:                                               ; preds = %25
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = call i32 @seq_puts(%struct.seq_file* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %34
  br label %47

47:                                               ; preds = %46, %18
  %48 = load i32, i32* @displacing_large_files, align 4
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = call i64 @TEST_OPTION(i32 %48, %struct.super_block* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = call i32 @print_sep(%struct.seq_file* %53, i32* %5)
  %55 = load %struct.super_block*, %struct.super_block** %4, align 8
  %56 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 16
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = load %struct.super_block*, %struct.super_block** %4, align 8
  %64 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %72

69:                                               ; preds = %52
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = call i32 @seq_puts(%struct.seq_file* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %61
  br label %73

73:                                               ; preds = %72, %47
  %74 = load i32, i32* @displacing_new_packing_localities, align 4
  %75 = load %struct.super_block*, %struct.super_block** %4, align 8
  %76 = call i64 @TEST_OPTION(i32 %74, %struct.super_block* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %80 = call i32 @print_sep(%struct.seq_file* %79, i32* %5)
  %81 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %82 = call i32 @seq_puts(%struct.seq_file* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* @old_hashed_relocation, align 4
  %85 = load %struct.super_block*, %struct.super_block** %4, align 8
  %86 = call i64 @TEST_OPTION(i32 %84, %struct.super_block* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %90 = call i32 @print_sep(%struct.seq_file* %89, i32* %5)
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = call i32 @seq_puts(%struct.seq_file* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* @new_hashed_relocation, align 4
  %95 = load %struct.super_block*, %struct.super_block** %4, align 8
  %96 = call i64 @TEST_OPTION(i32 %94, %struct.super_block* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %100 = call i32 @print_sep(%struct.seq_file* %99, i32* %5)
  %101 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %102 = call i32 @seq_puts(%struct.seq_file* %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* @dirid_groups, align 4
  %105 = load %struct.super_block*, %struct.super_block** %4, align 8
  %106 = call i64 @TEST_OPTION(i32 %104, %struct.super_block* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %110 = call i32 @print_sep(%struct.seq_file* %109, i32* %5)
  %111 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %112 = call i32 @seq_puts(%struct.seq_file* %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* @oid_groups, align 4
  %115 = load %struct.super_block*, %struct.super_block** %4, align 8
  %116 = call i64 @TEST_OPTION(i32 %114, %struct.super_block* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %120 = call i32 @print_sep(%struct.seq_file* %119, i32* %5)
  %121 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %122 = call i32 @seq_puts(%struct.seq_file* %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %123

123:                                              ; preds = %118, %113
  %124 = load i32, i32* @packing_groups, align 4
  %125 = load %struct.super_block*, %struct.super_block** %4, align 8
  %126 = call i64 @TEST_OPTION(i32 %124, %struct.super_block* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %130 = call i32 @print_sep(%struct.seq_file* %129, i32* %5)
  %131 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %132 = call i32 @seq_puts(%struct.seq_file* %131, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32, i32* @hashed_formatted_nodes, align 4
  %135 = load %struct.super_block*, %struct.super_block** %4, align 8
  %136 = call i64 @TEST_OPTION(i32 %134, %struct.super_block* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %140 = call i32 @print_sep(%struct.seq_file* %139, i32* %5)
  %141 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %142 = call i32 @seq_puts(%struct.seq_file* %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32, i32* @skip_busy, align 4
  %145 = load %struct.super_block*, %struct.super_block** %4, align 8
  %146 = call i64 @TEST_OPTION(i32 %144, %struct.super_block* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %150 = call i32 @print_sep(%struct.seq_file* %149, i32* %5)
  %151 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %152 = call i32 @seq_puts(%struct.seq_file* %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i32, i32* @hundredth_slices, align 4
  %155 = load %struct.super_block*, %struct.super_block** %4, align 8
  %156 = call i64 @TEST_OPTION(i32 %154, %struct.super_block* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %160 = call i32 @print_sep(%struct.seq_file* %159, i32* %5)
  %161 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %162 = call i32 @seq_puts(%struct.seq_file* %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %163

163:                                              ; preds = %158, %153
  %164 = load i32, i32* @old_way, align 4
  %165 = load %struct.super_block*, %struct.super_block** %4, align 8
  %166 = call i64 @TEST_OPTION(i32 %164, %struct.super_block* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %170 = call i32 @print_sep(%struct.seq_file* %169, i32* %5)
  %171 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %172 = call i32 @seq_puts(%struct.seq_file* %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %173

173:                                              ; preds = %168, %163
  %174 = load i32, i32* @displace_based_on_dirid, align 4
  %175 = load %struct.super_block*, %struct.super_block** %4, align 8
  %176 = call i64 @TEST_OPTION(i32 %174, %struct.super_block* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %180 = call i32 @print_sep(%struct.seq_file* %179, i32* %5)
  %181 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %182 = call i32 @seq_puts(%struct.seq_file* %181, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  br label %183

183:                                              ; preds = %178, %173
  %184 = load %struct.super_block*, %struct.super_block** %4, align 8
  %185 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %184)
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %183
  %191 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %192 = call i32 @print_sep(%struct.seq_file* %191, i32* %5)
  %193 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %194 = load %struct.super_block*, %struct.super_block** %4, align 8
  %195 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %194)
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @seq_printf(%struct.seq_file* %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %190, %183
  %201 = load %struct.super_block*, %struct.super_block** %4, align 8
  %202 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %201)
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 17
  br i1 %206, label %207, label %217

207:                                              ; preds = %200
  %208 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %209 = call i32 @print_sep(%struct.seq_file* %208, i32* %5)
  %210 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %211 = load %struct.super_block*, %struct.super_block** %4, align 8
  %212 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %211)
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @seq_printf(%struct.seq_file* %210, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %17, %207, %200
  ret void
}

declare dso_local i32 @SB_ALLOC_OPTS(%struct.super_block*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @TEST_OPTION(i32, %struct.super_block*) #1

declare dso_local i32 @print_sep(%struct.seq_file*, i32*) #1

declare dso_local %struct.TYPE_4__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
