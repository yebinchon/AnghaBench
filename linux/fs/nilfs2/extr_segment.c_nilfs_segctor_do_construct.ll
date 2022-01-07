; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_do_construct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_do_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i64, i32, i32, i32 }

@NILFS_ST_INIT = common dso_local global i32 0, align 4
@NILFS_SC_DIRTY = common dso_local global i32 0, align 4
@NILFS_CF_HISTORY_MASK = common dso_local global i32 0, align 4
@NILFS_ST_DONE = common dso_local global i64 0, align 8
@NILFS_CF_IFILE_STARTED = common dso_local global i32 0, align 4
@SC_LSEG_SR = common dso_local global i32 0, align 4
@NILFS_ST_CPFILE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*, i32)* @nilfs_segctor_do_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %8 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %7, i32 0, i32 9
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  store %struct.the_nilfs* %11, %struct.the_nilfs** %5, align 8
  %12 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %13 = load i32, i32* @NILFS_ST_INIT, align 4
  %14 = call i32 @nilfs_sc_cstage_set(%struct.nilfs_sc_info* %12, i32 %13)
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %16 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %19 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 8
  %20 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %21 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %22 = call i32 @nilfs_segctor_collect_dirty_files(%struct.nilfs_sc_info* %20, %struct.the_nilfs* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %172

27:                                               ; preds = %2
  %28 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %29 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %30 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @nilfs_test_metadata_dirty(%struct.the_nilfs* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* @NILFS_SC_DIRTY, align 4
  %36 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %37 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %36, i32 0, i32 6
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %41 = call i64 @nilfs_segctor_clean(%struct.nilfs_sc_info* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %172

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %166, %44
  %46 = load i32, i32* @NILFS_CF_HISTORY_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %49 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %47
  store i32 %52, i32* %50, align 8
  %53 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %54 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %55 = call i32 @nilfs_segctor_begin_construction(%struct.nilfs_sc_info* %53, %struct.the_nilfs* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %172

60:                                               ; preds = %45
  %61 = call i32 (...) @ktime_get_real_seconds()
  %62 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %63 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %65 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @nilfs_segctor_collect(%struct.nilfs_sc_info* %64, %struct.the_nilfs* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %190

72:                                               ; preds = %60
  %73 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %74 = call i64 @nilfs_sc_cstage_get(%struct.nilfs_sc_info* %73)
  %75 = load i64, i64* @NILFS_ST_DONE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %79 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @nilfs_segbuf_empty(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %85 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %86 = call i32 @nilfs_segctor_abort_construction(%struct.nilfs_sc_info* %84, %struct.the_nilfs* %85, i32 1)
  br label %172

87:                                               ; preds = %77, %72
  %88 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @nilfs_segctor_assign(%struct.nilfs_sc_info* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %190

95:                                               ; preds = %87
  %96 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %97 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @NILFS_CF_IFILE_STARTED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %105 = call i32 @nilfs_segctor_fill_in_file_bmap(%struct.nilfs_sc_info* %104)
  br label %106

106:                                              ; preds = %103, %95
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @SC_LSEG_SR, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %112 = call i64 @nilfs_sc_cstage_get(%struct.nilfs_sc_info* %111)
  %113 = load i64, i64* @NILFS_ST_CPFILE, align 8
  %114 = icmp sge i64 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %117 = call i32 @nilfs_segctor_fill_in_checkpoint(%struct.nilfs_sc_info* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %177

122:                                              ; preds = %115
  %123 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %124 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %125 = call i32 @nilfs_segctor_fill_in_super_root(%struct.nilfs_sc_info* %123, %struct.the_nilfs* %124)
  br label %126

126:                                              ; preds = %122, %110, %106
  %127 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %128 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %129 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @nilfs_segctor_update_segusage(%struct.nilfs_sc_info* %127, i32 %130)
  %132 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %133 = call i32 @nilfs_segctor_prepare_write(%struct.nilfs_sc_info* %132)
  %134 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %135 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %134, i32 0, i32 3
  %136 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %137 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @nilfs_add_checksums_on_logs(i32* %135, i32 %138)
  %140 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %141 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %142 = call i32 @nilfs_segctor_write(%struct.nilfs_sc_info* %140, %struct.the_nilfs* %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %126
  br label %177

147:                                              ; preds = %126
  %148 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %149 = call i64 @nilfs_sc_cstage_get(%struct.nilfs_sc_info* %148)
  %150 = load i64, i64* @NILFS_ST_DONE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %147
  %153 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %154 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @PAGE_SHIFT, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %152, %147
  %159 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %160 = call i32 @nilfs_segctor_wait(%struct.nilfs_sc_info* %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %177

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164, %152
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %168 = call i64 @nilfs_sc_cstage_get(%struct.nilfs_sc_info* %167)
  %169 = load i64, i64* @NILFS_ST_DONE, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %45, label %171

171:                                              ; preds = %166
  br label %172

172:                                              ; preds = %197, %171, %83, %59, %43, %26
  %173 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %174 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %175 = call i32 @nilfs_segctor_drop_written_files(%struct.nilfs_sc_info* %173, %struct.the_nilfs* %174)
  %176 = load i32, i32* %6, align 4
  ret i32 %176

177:                                              ; preds = %163, %146, %121
  %178 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %179 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @NILFS_CF_IFILE_STARTED, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %177
  %186 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %187 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %186, i32 0, i32 1
  %188 = call i32 @nilfs_redirty_inodes(i32* %187)
  br label %189

189:                                              ; preds = %185, %177
  br label %190

190:                                              ; preds = %189, %94, %71
  %191 = call i64 (...) @nilfs_doing_gc()
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %195 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %194, i32 0, i32 0
  %196 = call i32 @nilfs_redirty_inodes(i32* %195)
  br label %197

197:                                              ; preds = %193, %190
  %198 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %199 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %200 = load i32, i32* %6, align 4
  %201 = call i32 @nilfs_segctor_abort_construction(%struct.nilfs_sc_info* %198, %struct.the_nilfs* %199, i32 %200)
  br label %172
}

declare dso_local i32 @nilfs_sc_cstage_set(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @nilfs_segctor_collect_dirty_files(%struct.nilfs_sc_info*, %struct.the_nilfs*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nilfs_test_metadata_dirty(%struct.the_nilfs*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @nilfs_segctor_clean(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_segctor_begin_construction(%struct.nilfs_sc_info*, %struct.the_nilfs*) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @nilfs_segctor_collect(%struct.nilfs_sc_info*, %struct.the_nilfs*, i32) #1

declare dso_local i64 @nilfs_sc_cstage_get(%struct.nilfs_sc_info*) #1

declare dso_local i64 @nilfs_segbuf_empty(i32) #1

declare dso_local i32 @nilfs_segctor_abort_construction(%struct.nilfs_sc_info*, %struct.the_nilfs*, i32) #1

declare dso_local i32 @nilfs_segctor_assign(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @nilfs_segctor_fill_in_file_bmap(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_segctor_fill_in_checkpoint(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_segctor_fill_in_super_root(%struct.nilfs_sc_info*, %struct.the_nilfs*) #1

declare dso_local i32 @nilfs_segctor_update_segusage(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @nilfs_segctor_prepare_write(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_add_checksums_on_logs(i32*, i32) #1

declare dso_local i32 @nilfs_segctor_write(%struct.nilfs_sc_info*, %struct.the_nilfs*) #1

declare dso_local i32 @nilfs_segctor_wait(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_segctor_drop_written_files(%struct.nilfs_sc_info*, %struct.the_nilfs*) #1

declare dso_local i32 @nilfs_redirty_inodes(i32*) #1

declare dso_local i64 @nilfs_doing_gc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
