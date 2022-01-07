; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_do_assert_master.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_do_assert_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32, i32 }
%struct.dlm_lock_resource = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.dlm_assert_master = type { i32, i32, i32, i32 }
%struct.dlm_node_iter = type { i32 }
%struct.dlm_master_list_entry = type { i32 }

@O2NM_MAX_NAME_LEN = common dso_local global i32 0, align 4
@DLM_LOCK_RES_SETREF_INPROG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sending assert master to %d (%.*s)\0A\00", align 1
@DLM_ASSERT_MASTER_MSG = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Error %d when sending message %u (key 0x%x) to node %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"unhandled error=%d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"link to %d went down!\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"during assert master of %.*s to %u, got %d.\0A\00", align 1
@DLM_ASSERT_RESPONSE_REASSERT = common dso_local global i32 0, align 4
@DLM_ASSERT_RESPONSE_MASTERY_REF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"%.*s: very strange, master MLE but no lockres on %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"%.*s: node %u create mles on other nodes and requests a re-assert\0A\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"%.*s: node %u has a reference to this lockres, set the bit in the refmap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i8*, i32)* @dlm_do_assert_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_do_assert_master(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlm_assert_master, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dlm_node_iter, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dlm_master_list_entry*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %20 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %15, align 8
  %23 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %24 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @O2NM_MAX_NAME_LEN, align 4
  %29 = icmp ugt i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %33 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load i32, i32* @DLM_LOCK_RES_SETREF_INPROG, align 4
  %36 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %37 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %41 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %183, %4
  store i32 0, i32* %14, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @dlm_node_iter_init(i8* %44, %struct.dlm_node_iter* %12)
  br label %46

46:                                               ; preds = %179, %43
  %47 = call i32 @dlm_node_iter_next(%struct.dlm_node_iter* %12)
  store i32 %47, i32* %10, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %180

49:                                               ; preds = %46
  store i32 0, i32* %17, align 4
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %18, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i8* %52)
  %54 = call i32 @memset(%struct.dlm_assert_master* %9, i32 0, i32 16)
  %55 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %56 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %9, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %16, align 4
  %60 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %9, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %9, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %15, align 8
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @memcpy(i32 %62, i8* %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @cpu_to_be32(i32 %66)
  %68 = getelementptr inbounds %struct.dlm_assert_master, %struct.dlm_assert_master* %9, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @DLM_ASSERT_MASTER_MSG, align 4
  %70 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %71 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @o2net_send_message(i32 %69, i32 %72, %struct.dlm_assert_master* %9, i32 16, i32 %73, i32* %17)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %49
  %78 = load i32, i32* @ML_ERROR, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @DLM_ASSERT_MASTER_MSG, align 4
  %81 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %82 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 (i32, i8*, i32, ...) @mlog(i32 %78, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80, i32 %83, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @dlm_is_host_down(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %77
  %90 = load i32, i32* @ML_ERROR, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 (i32, i8*, i32, ...) @mlog(i32 %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = call i32 (...) @BUG()
  br label %94

94:                                               ; preds = %89, %77
  %95 = load i32, i32* %10, align 4
  %96 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %133

98:                                               ; preds = %49
  %99 = load i32, i32* %17, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %132

101:                                              ; preds = %98
  %102 = load i32, i32* @ML_ERROR, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i8*, i8** %15, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %17, align 4
  %107 = call i32 (i32, i8*, i32, ...) @mlog(i32 %102, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %103, i8* %104, i32 %105, i32 %106)
  %108 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %109 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %108, i32 0, i32 0
  %110 = call i32 @spin_lock(i32* %109)
  %111 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %112 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %111, i32 0, i32 1
  %113 = call i32 @spin_lock(i32* %112)
  %114 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = load i32, i32* %16, align 4
  %117 = call i64 @dlm_find_mle(%struct.dlm_ctxt* %114, %struct.dlm_master_list_entry** %18, i8* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %101
  %120 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %18, align 8
  %121 = call i32 @dlm_print_one_mle(%struct.dlm_master_list_entry* %120)
  %122 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %18, align 8
  %123 = call i32 @__dlm_put_mle(%struct.dlm_master_list_entry* %122)
  br label %124

124:                                              ; preds = %119, %101
  %125 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %126 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %125, i32 0, i32 1
  %127 = call i32 @spin_unlock(i32* %126)
  %128 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %129 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %128, i32 0, i32 0
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = call i32 (...) @BUG()
  br label %132

132:                                              ; preds = %124, %98
  br label %133

133:                                              ; preds = %132, %94
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @DLM_ASSERT_RESPONSE_REASSERT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %133
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* @DLM_ASSERT_RESPONSE_MASTERY_REF, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @ML_ERROR, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i8*, i8** %15, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 (i32, i8*, i32, ...) @mlog(i32 %144, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %145, i8* %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %138, %133
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* @DLM_ASSERT_RESPONSE_REASSERT, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load i32, i32* %16, align 4
  %156 = load i8*, i8** %15, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %155, i8* %156, i32 %157)
  store i32 1, i32* %14, align 4
  br label %159

159:                                              ; preds = %154, %149
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* @DLM_ASSERT_RESPONSE_MASTERY_REF, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %159
  %165 = load i32, i32* %16, align 4
  %166 = load i8*, i8** %15, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i32 %165, i8* %166, i32 %167)
  %169 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %170 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %169, i32 0, i32 1
  %171 = call i32 @spin_lock(i32* %170)
  %172 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %173 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @dlm_lockres_set_refmap_bit(%struct.dlm_ctxt* %172, %struct.dlm_lock_resource* %173, i32 %174)
  %176 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %177 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %176, i32 0, i32 1
  %178 = call i32 @spin_unlock(i32* %177)
  br label %179

179:                                              ; preds = %164, %159
  br label %46

180:                                              ; preds = %46
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %43

184:                                              ; preds = %180
  %185 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %186 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %185, i32 0, i32 1
  %187 = call i32 @spin_lock(i32* %186)
  %188 = load i32, i32* @DLM_LOCK_RES_SETREF_INPROG, align 4
  %189 = xor i32 %188, -1
  %190 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %191 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %195 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %194, i32 0, i32 1
  %196 = call i32 @spin_unlock(i32* %195)
  %197 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %198 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %197, i32 0, i32 0
  %199 = call i32 @wake_up(i32* %198)
  %200 = load i32, i32* %13, align 4
  ret i32 %200
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_node_iter_init(i8*, %struct.dlm_node_iter*) #1

declare dso_local i32 @dlm_node_iter_next(%struct.dlm_node_iter*) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.dlm_assert_master*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_assert_master*, i32, i32, i32*) #1

declare dso_local i32 @dlm_is_host_down(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @dlm_find_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry**, i8*, i32) #1

declare dso_local i32 @dlm_print_one_mle(%struct.dlm_master_list_entry*) #1

declare dso_local i32 @__dlm_put_mle(%struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_lockres_set_refmap_bit(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
