; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlm_create_lock_handler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlm_create_lock_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_ctxt = type { i32 }
%struct.dlm_create_lock = type { i8*, i32, i32, i32, i32, i32 }
%struct.dlm_lock_resource = type { i32 }
%struct.dlm_lock = type { %struct.dlm_lockstatus* }
%struct.dlm_lockstatus = type { i32 }

@DLM_NORMAL = common dso_local global i32 0, align 4
@DLM_REJECTED = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"Domain %s not fully joined, but node %u is sending a create_lock message for lock %.*s!\0A\00", align 1
@DLM_IVBUFLEN = common dso_local global i32 0, align 4
@DLM_LOCKID_NAME_MAX = common dso_local global i32 0, align 4
@DLM_SYSERR = common dso_local global i32 0, align 4
@LKM_GET_LVB = common dso_local global i32 0, align 4
@DLM_LKSB_GET_LVB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"set DLM_LKSB_GET_LVB flag\0A\00", align 1
@DLM_IVLOCKID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"lockres recovering/migrating/in-progress\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_create_lock_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.o2net_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dlm_ctxt*, align 8
  %11 = alloca %struct.dlm_create_lock*, align 8
  %12 = alloca %struct.dlm_lock_resource*, align 8
  %13 = alloca %struct.dlm_lock*, align 8
  %14 = alloca %struct.dlm_lockstatus*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.o2net_msg* %0, %struct.o2net_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %19, %struct.dlm_ctxt** %10, align 8
  %20 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %21 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.dlm_create_lock*
  store %struct.dlm_create_lock* %23, %struct.dlm_create_lock** %11, align 8
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %12, align 8
  store %struct.dlm_lock* null, %struct.dlm_lock** %13, align 8
  store %struct.dlm_lockstatus* null, %struct.dlm_lockstatus** %14, align 8
  %24 = load i32, i32* @DLM_NORMAL, align 4
  store i32 %24, i32* %15, align 4
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %26 = icmp ne %struct.dlm_ctxt* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %31 = call i32 @dlm_grab(%struct.dlm_ctxt* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @DLM_REJECTED, align 4
  store i32 %34, i32* %5, align 4
  br label %161

35:                                               ; preds = %4
  %36 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %37 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %16, align 8
  %39 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %40 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* @DLM_REJECTED, align 4
  store i32 %42, i32* %15, align 4
  %43 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %44 = call i32 @dlm_domain_fully_joined(%struct.dlm_ctxt* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @ML_ERROR, align 4
  %48 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %49 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %52 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i8*, i8** %16, align 8
  %56 = call i32 (i32, i8*, ...) @mlog(i32 %47, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i32 %54, i8* %55)
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @dlm_error(i32 %57)
  br label %140

59:                                               ; preds = %35
  %60 = load i32, i32* @DLM_IVBUFLEN, align 4
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* @DLM_LOCKID_NAME_MAX, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @dlm_error(i32 %65)
  br label %140

67:                                               ; preds = %59
  %68 = load i32, i32* @DLM_SYSERR, align 4
  store i32 %68, i32* %15, align 4
  %69 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %70 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %73 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %76 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @be64_to_cpu(i32 %77)
  %79 = call %struct.dlm_lock* @dlm_new_lock(i32 %71, i32 %74, i32 %78, i32* null)
  store %struct.dlm_lock* %79, %struct.dlm_lock** %13, align 8
  %80 = load %struct.dlm_lock*, %struct.dlm_lock** %13, align 8
  %81 = icmp ne %struct.dlm_lock* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %67
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @dlm_error(i32 %83)
  br label %140

85:                                               ; preds = %67
  %86 = load %struct.dlm_lock*, %struct.dlm_lock** %13, align 8
  %87 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %86, i32 0, i32 0
  %88 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %87, align 8
  store %struct.dlm_lockstatus* %88, %struct.dlm_lockstatus** %14, align 8
  %89 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %90 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be32_to_cpu(i32 %91)
  %93 = load i32, i32* @LKM_GET_LVB, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %85
  %97 = load i32, i32* @DLM_LKSB_GET_LVB, align 4
  %98 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %14, align 8
  %99 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %96, %85
  %104 = load i32, i32* @DLM_IVLOCKID, align 4
  store i32 %104, i32* %15, align 4
  %105 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load i32, i32* %17, align 4
  %108 = call %struct.dlm_lock_resource* @dlm_lookup_lockres(%struct.dlm_ctxt* %105, i8* %106, i32 %107)
  store %struct.dlm_lock_resource* %108, %struct.dlm_lock_resource** %12, align 8
  %109 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %110 = icmp ne %struct.dlm_lock_resource* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @dlm_error(i32 %112)
  br label %140

114:                                              ; preds = %103
  %115 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %116 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %115, i32 0, i32 0
  %117 = call i32 @spin_lock(i32* %116)
  %118 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %119 = call i32 @__dlm_lockres_state_to_status(%struct.dlm_lock_resource* %118)
  store i32 %119, i32* %15, align 4
  %120 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %121 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %120, i32 0, i32 0
  %122 = call i32 @spin_unlock(i32* %121)
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @DLM_NORMAL, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %114
  %127 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %140

128:                                              ; preds = %114
  %129 = load %struct.dlm_lock*, %struct.dlm_lock** %13, align 8
  %130 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %131 = call i32 @dlm_lock_attach_lockres(%struct.dlm_lock* %129, %struct.dlm_lock_resource* %130)
  %132 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %133 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %134 = load %struct.dlm_lock*, %struct.dlm_lock** %13, align 8
  %135 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %136 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @be32_to_cpu(i32 %137)
  %139 = call i32 @dlmlock_master(%struct.dlm_ctxt* %132, %struct.dlm_lock_resource* %133, %struct.dlm_lock* %134, i32 %138)
  store i32 %139, i32* %15, align 4
  br label %140

140:                                              ; preds = %128, %126, %111, %82, %64, %46
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* @DLM_NORMAL, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load %struct.dlm_lock*, %struct.dlm_lock** %13, align 8
  %146 = icmp ne %struct.dlm_lock* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.dlm_lock*, %struct.dlm_lock** %13, align 8
  %149 = call i32 @dlm_lock_put(%struct.dlm_lock* %148)
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %140
  %152 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %153 = icmp ne %struct.dlm_lock_resource* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %156 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %159 = call i32 @dlm_put(%struct.dlm_ctxt* %158)
  %160 = load i32, i32* %15, align 4
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %157, %33
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_domain_fully_joined(%struct.dlm_ctxt*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @dlm_error(i32) #1

declare dso_local %struct.dlm_lock* @dlm_new_lock(i32, i32, i32, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.dlm_lock_resource* @dlm_lookup_lockres(%struct.dlm_ctxt*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_lockres_state_to_status(%struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_lock_attach_lockres(%struct.dlm_lock*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlmlock_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32) #1

declare dso_local i32 @dlm_lock_put(%struct.dlm_lock*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
