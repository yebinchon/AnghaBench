; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_inode_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_inode_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.super_block = type { i32 }
%struct.gfs2_inode = type { %struct.gfs2_glock*, %struct.gfs2_holder, i32, i32 }
%struct.gfs2_glock = type { i32 }
%struct.gfs2_holder = type { %struct.gfs2_glock*, i32 }
%struct.gfs2_sbd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@gfs2_inode_glops = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@gfs2_iopen_glops = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@GFS2_BLKST_FREE = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GL_SKIP = common dso_local global i32 0, align 4
@GIF_INVALID = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@GL_EXACT = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @gfs2_inode_lookup(%struct.super_block* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.gfs2_inode*, align 8
  %14 = alloca %struct.gfs2_glock*, align 8
  %15 = alloca %struct.gfs2_holder, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.gfs2_sbd*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.gfs2_glock* null, %struct.gfs2_glock** %14, align 8
  %18 = call i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder* %15)
  %19 = load %struct.super_block*, %struct.super_block** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.inode* @gfs2_iget(%struct.super_block* %19, i32 %20)
  store %struct.inode* %21, %struct.inode** %12, align 8
  %22 = load %struct.inode*, %struct.inode** %12, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.inode* @ERR_PTR(i32 %26)
  store %struct.inode* %27, %struct.inode** %6, align 8
  br label %200

28:                                               ; preds = %5
  %29 = load %struct.inode*, %struct.inode** %12, align 8
  %30 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %29)
  store %struct.gfs2_inode* %30, %struct.gfs2_inode** %13, align 8
  %31 = load %struct.inode*, %struct.inode** %12, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @I_NEW, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %155

37:                                               ; preds = %28
  %38 = load %struct.inode*, %struct.inode** %12, align 8
  %39 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %38)
  store %struct.gfs2_sbd* %39, %struct.gfs2_sbd** %17, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %42 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %17, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @CREATE, align 4
  %46 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %47 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %46, i32 0, i32 0
  %48 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %43, i32 %44, i32* @gfs2_inode_glops, i32 %45, %struct.gfs2_glock** %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %195

53:                                               ; preds = %37
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %55 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %54, i32 0, i32 0
  %56 = load %struct.gfs2_glock*, %struct.gfs2_glock** %55, align 8
  %57 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %56, i32 0, i32 0
  %58 = call i32 @flush_delayed_work(i32* %57)
  %59 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %17, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @CREATE, align 4
  %62 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %59, i32 %60, i32* @gfs2_iopen_glops, i32 %61, %struct.gfs2_glock** %14)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %178

67:                                               ; preds = %53
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @DT_UNKNOWN, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %71, %67
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %77 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %76, i32 0, i32 0
  %78 = load %struct.gfs2_glock*, %struct.gfs2_glock** %77, align 8
  %79 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %80 = load i32, i32* @GL_SKIP, align 4
  %81 = call i32 @gfs2_glock_nq_init(%struct.gfs2_glock* %78, i32 %79, i32 %80, %struct.gfs2_holder* %15)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %178

85:                                               ; preds = %75
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %17, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @gfs2_check_blk_type(%struct.gfs2_sbd* %90, i32 %91, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %178

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %85
  br label %99

99:                                               ; preds = %98, %71
  %100 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %101 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %100, i32 0, i32 0
  %102 = load %struct.gfs2_glock*, %struct.gfs2_glock** %101, align 8
  %103 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %104 = call i32 @glock_set_object(%struct.gfs2_glock* %102, %struct.gfs2_inode* %103)
  %105 = load i32, i32* @GIF_INVALID, align 4
  %106 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %107 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %106, i32 0, i32 2
  %108 = call i32 @set_bit(i32 %105, i32* %107)
  %109 = load %struct.gfs2_glock*, %struct.gfs2_glock** %14, align 8
  %110 = load i32, i32* @LM_ST_SHARED, align 4
  %111 = load i32, i32* @GL_EXACT, align 4
  %112 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %113 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %112, i32 0, i32 1
  %114 = call i32 @gfs2_glock_nq_init(%struct.gfs2_glock* %109, i32 %110, i32 %111, %struct.gfs2_holder* %113)
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %99
  br label %178

119:                                              ; preds = %99
  %120 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %121 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %121, i32 0, i32 0
  %123 = load %struct.gfs2_glock*, %struct.gfs2_glock** %122, align 8
  %124 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %125 = call i32 @glock_set_object(%struct.gfs2_glock* %123, %struct.gfs2_inode* %124)
  %126 = load %struct.gfs2_glock*, %struct.gfs2_glock** %14, align 8
  %127 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %126)
  store %struct.gfs2_glock* null, %struct.gfs2_glock** %14, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @DT_UNKNOWN, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %119
  %132 = load %struct.inode*, %struct.inode** %12, align 8
  %133 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %132)
  %134 = call i32 @gfs2_inode_refresh(%struct.gfs2_inode* %133)
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %162

138:                                              ; preds = %131
  br label %144

139:                                              ; preds = %119
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @DT2IF(i32 %140)
  %142 = load %struct.inode*, %struct.inode** %12, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %139, %138
  %145 = load %struct.inode*, %struct.inode** %12, align 8
  %146 = call i32 @gfs2_set_iop(%struct.inode* %145)
  %147 = load %struct.inode*, %struct.inode** %12, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i64 -9223372036854775808, i64* %149, align 8
  %150 = load %struct.inode*, %struct.inode** %12, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  store i64 0, i64* %152, align 8
  %153 = load %struct.inode*, %struct.inode** %12, align 8
  %154 = call i32 @unlock_new_inode(%struct.inode* %153)
  br label %155

155:                                              ; preds = %144, %28
  %156 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %15)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %15)
  br label %160

160:                                              ; preds = %158, %155
  %161 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %161, %struct.inode** %6, align 8
  br label %200

162:                                              ; preds = %137
  %163 = load i32, i32* @GL_NOCACHE, align 4
  %164 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %165 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %163
  store i32 %168, i32* %166, align 8
  %169 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %170 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %170, i32 0, i32 0
  %172 = load %struct.gfs2_glock*, %struct.gfs2_glock** %171, align 8
  %173 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %174 = call i32 @glock_clear_object(%struct.gfs2_glock* %172, %struct.gfs2_inode* %173)
  %175 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %176 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %175, i32 0, i32 1
  %177 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %176)
  br label %178

178:                                              ; preds = %162, %118, %96, %84, %66
  %179 = load %struct.gfs2_glock*, %struct.gfs2_glock** %14, align 8
  %180 = icmp ne %struct.gfs2_glock* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load %struct.gfs2_glock*, %struct.gfs2_glock** %14, align 8
  %183 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %182)
  br label %184

184:                                              ; preds = %181, %178
  %185 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %186 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %185, i32 0, i32 0
  %187 = load %struct.gfs2_glock*, %struct.gfs2_glock** %186, align 8
  %188 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %189 = call i32 @glock_clear_object(%struct.gfs2_glock* %187, %struct.gfs2_inode* %188)
  %190 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %15)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %15)
  br label %194

194:                                              ; preds = %192, %184
  br label %195

195:                                              ; preds = %194, %52
  %196 = load %struct.inode*, %struct.inode** %12, align 8
  %197 = call i32 @iget_failed(%struct.inode* %196)
  %198 = load i32, i32* %16, align 4
  %199 = call %struct.inode* @ERR_PTR(i32 %198)
  store %struct.inode* %199, %struct.inode** %6, align 8
  br label %200

200:                                              ; preds = %195, %160, %24
  %201 = load %struct.inode*, %struct.inode** %6, align 8
  ret %struct.inode* %201
}

declare dso_local i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder*) #1

declare dso_local %struct.inode* @gfs2_iget(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_get(%struct.gfs2_sbd*, i32, i32*, i32, %struct.gfs2_glock**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.gfs2_glock*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_check_blk_type(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @glock_set_object(%struct.gfs2_glock*, %struct.gfs2_inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_glock_put(%struct.gfs2_glock*) #1

declare dso_local i32 @gfs2_inode_refresh(%struct.gfs2_inode*) #1

declare dso_local i32 @DT2IF(i32) #1

declare dso_local i32 @gfs2_set_iop(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i64 @gfs2_holder_initialized(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @glock_clear_object(%struct.gfs2_glock*, %struct.gfs2_inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
