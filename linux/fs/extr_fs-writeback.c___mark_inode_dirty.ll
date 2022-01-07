; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c___mark_inode_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c___mark_inode_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i8*, i8*, i32, %struct.super_block* }
%struct.super_block = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.inode*, i32)* }
%struct.bdi_writeback = type { %struct.TYPE_4__*, i32, %struct.list_head, %struct.list_head, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.list_head = type { i32 }

@I_DIRTY_INODE = common dso_local global i32 0, align 4
@I_DIRTY_TIME = common dso_local global i32 0, align 4
@block_dump = common dso_local global i32 0, align 4
@I_DIRTY = common dso_local global i32 0, align 4
@I_SYNC = common dso_local global i32 0, align 4
@I_FREEING = common dso_local global i32 0, align 4
@WB_registered = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bdi-%s not registered\0A\00", align 1
@jiffies = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mark_inode_dirty(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bdi_writeback*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 5
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @trace_writeback_mark_inode_dirty(%struct.inode* %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @I_DIRTY_INODE, align 4
  %19 = load i32, i32* @I_DIRTY_TIME, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @trace_writeback_dirty_inode_start(%struct.inode* %24, i32 %25)
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.inode*, i32)*, i32 (%struct.inode*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.inode*, i32)* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.inode*, i32)*, i32 (%struct.inode*, i32)** %37, align 8
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 %38(%struct.inode* %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %23
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @trace_writeback_dirty_inode(%struct.inode* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %2
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @I_DIRTY_INODE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @I_DIRTY_TIME, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @I_DIRTY_TIME, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = call i32 (...) @smp_mb()
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %78, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @I_DIRTY_INODE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71, %56
  br label %237

79:                                               ; preds = %71, %68
  %80 = load i32, i32* @block_dump, align 4
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.inode*, %struct.inode** %3, align 8
  %85 = call i32 @block_dump___mark_inode_dirty(%struct.inode* %84)
  br label %86

86:                                               ; preds = %83, %79
  %87 = load %struct.inode*, %struct.inode** %3, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = call i32 @spin_lock(i32* %88)
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = load %struct.inode*, %struct.inode** %3, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @I_DIRTY_INODE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %233

100:                                              ; preds = %92, %86
  %101 = load %struct.inode*, %struct.inode** %3, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %232

108:                                              ; preds = %100
  %109 = load %struct.inode*, %struct.inode** %3, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @I_DIRTY, align 4
  %113 = and i32 %111, %112
  store i32 %113, i32* %7, align 4
  %114 = load %struct.inode*, %struct.inode** %3, align 8
  %115 = call i32 @inode_attach_wb(%struct.inode* %114, i32* null)
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @I_DIRTY_INODE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %108
  %121 = load i32, i32* @I_DIRTY_TIME, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.inode*, %struct.inode** %3, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %120, %108
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.inode*, %struct.inode** %3, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.inode*, %struct.inode** %3, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @I_SYNC, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %127
  br label %233

140:                                              ; preds = %127
  %141 = load %struct.inode*, %struct.inode** %3, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @S_ISBLK(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.inode*, %struct.inode** %3, align 8
  %148 = call i64 @inode_unhashed(%struct.inode* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %233

151:                                              ; preds = %146
  br label %152

152:                                              ; preds = %151, %140
  %153 = load %struct.inode*, %struct.inode** %3, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @I_FREEING, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %233

160:                                              ; preds = %152
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %231, label %163

163:                                              ; preds = %160
  store i32 0, i32* %10, align 4
  %164 = load %struct.inode*, %struct.inode** %3, align 8
  %165 = call %struct.bdi_writeback* @locked_inode_to_wb_and_lock_list(%struct.inode* %164)
  store %struct.bdi_writeback* %165, %struct.bdi_writeback** %8, align 8
  %166 = load %struct.bdi_writeback*, %struct.bdi_writeback** %8, align 8
  %167 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %166, i32 0, i32 0
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = call i64 @bdi_cap_writeback_dirty(%struct.TYPE_4__* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %163
  %172 = load i32, i32* @WB_registered, align 4
  %173 = load %struct.bdi_writeback*, %struct.bdi_writeback** %8, align 8
  %174 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %173, i32 0, i32 4
  %175 = call i32 @test_bit(i32 %172, i32* %174)
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  br label %178

178:                                              ; preds = %171, %163
  %179 = phi i1 [ false, %163 ], [ %177, %171 ]
  %180 = zext i1 %179 to i32
  %181 = load %struct.bdi_writeback*, %struct.bdi_writeback** %8, align 8
  %182 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %181, i32 0, i32 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @WARN(i32 %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %185)
  %187 = load i8*, i8** @jiffies, align 8
  %188 = load %struct.inode*, %struct.inode** %3, align 8
  %189 = getelementptr inbounds %struct.inode, %struct.inode* %188, i32 0, i32 3
  store i8* %187, i8** %189, align 8
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %178
  %193 = load i8*, i8** @jiffies, align 8
  %194 = load %struct.inode*, %struct.inode** %3, align 8
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  br label %196

196:                                              ; preds = %192, %178
  %197 = load %struct.inode*, %struct.inode** %3, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @I_DIRTY, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = load %struct.bdi_writeback*, %struct.bdi_writeback** %8, align 8
  %205 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %204, i32 0, i32 3
  store %struct.list_head* %205, %struct.list_head** %9, align 8
  br label %209

206:                                              ; preds = %196
  %207 = load %struct.bdi_writeback*, %struct.bdi_writeback** %8, align 8
  %208 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %207, i32 0, i32 2
  store %struct.list_head* %208, %struct.list_head** %9, align 8
  br label %209

209:                                              ; preds = %206, %203
  %210 = load %struct.inode*, %struct.inode** %3, align 8
  %211 = load %struct.bdi_writeback*, %struct.bdi_writeback** %8, align 8
  %212 = load %struct.list_head*, %struct.list_head** %9, align 8
  %213 = call i32 @inode_io_list_move_locked(%struct.inode* %210, %struct.bdi_writeback* %211, %struct.list_head* %212)
  store i32 %213, i32* %10, align 4
  %214 = load %struct.bdi_writeback*, %struct.bdi_writeback** %8, align 8
  %215 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %214, i32 0, i32 1
  %216 = call i32 @spin_unlock(i32* %215)
  %217 = load %struct.inode*, %struct.inode** %3, align 8
  %218 = call i32 @trace_writeback_dirty_inode_enqueue(%struct.inode* %217)
  %219 = load %struct.bdi_writeback*, %struct.bdi_writeback** %8, align 8
  %220 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %219, i32 0, i32 0
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = call i64 @bdi_cap_writeback_dirty(%struct.TYPE_4__* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %209
  %225 = load i32, i32* %10, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load %struct.bdi_writeback*, %struct.bdi_writeback** %8, align 8
  %229 = call i32 @wb_wakeup_delayed(%struct.bdi_writeback* %228)
  br label %230

230:                                              ; preds = %227, %224, %209
  br label %237

231:                                              ; preds = %160
  br label %232

232:                                              ; preds = %231, %100
  br label %233

233:                                              ; preds = %232, %159, %150, %139, %99
  %234 = load %struct.inode*, %struct.inode** %3, align 8
  %235 = getelementptr inbounds %struct.inode, %struct.inode* %234, i32 0, i32 1
  %236 = call i32 @spin_unlock(i32* %235)
  br label %237

237:                                              ; preds = %233, %230, %78
  ret void
}

declare dso_local i32 @trace_writeback_mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @trace_writeback_dirty_inode_start(%struct.inode*, i32) #1

declare dso_local i32 @trace_writeback_dirty_inode(%struct.inode*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @block_dump___mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inode_attach_wb(%struct.inode*, i32*) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i64 @inode_unhashed(%struct.inode*) #1

declare dso_local %struct.bdi_writeback* @locked_inode_to_wb_and_lock_list(%struct.inode*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i64 @bdi_cap_writeback_dirty(%struct.TYPE_4__*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @inode_io_list_move_locked(%struct.inode*, %struct.bdi_writeback*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_writeback_dirty_inode_enqueue(%struct.inode*) #1

declare dso_local i32 @wb_wakeup_delayed(%struct.bdi_writeback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
