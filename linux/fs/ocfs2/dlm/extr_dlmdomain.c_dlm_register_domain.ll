; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_register_domain.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_register_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64, %struct.dlm_protocol_version, i32, i32, i32 }
%struct.dlm_protocol_version = type { i32 }

@O2NM_MAX_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"domain name length too long\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"register called for domain \22%s\22\0A\00", align 1
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@dlm_domain_lock = common dso_local global i32 0, align 4
@DLM_CTXT_JOINED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"This ctxt is not joined yet!\0A\00", align 1
@dlm_domain_events = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [90 x i8] c"Requested locking protocol version is not compatible with already registered domain \22%s\22\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dlm_domains = common dso_local global i32 0, align 4
@dlm_protocol = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dlm_ctxt* @dlm_register_domain(i8* %0, i32 %1, %struct.dlm_protocol_version* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dlm_protocol_version*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_ctxt*, align 8
  %9 = alloca %struct.dlm_ctxt*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dlm_protocol_version* %2, %struct.dlm_protocol_version** %6, align 8
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %8, align 8
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = load i64, i64* @O2NM_MAX_NAME_LEN, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* @ENAMETOOLONG, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @ML_ERROR, align 4
  %18 = call i32 (i32, i8*, ...) @mlog(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %116

19:                                               ; preds = %3
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %81, %43, %19
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %8, align 8
  %23 = load i32, i32* @current, align 4
  %24 = call i64 @signal_pending(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* @ERESTARTSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %116

31:                                               ; preds = %22
  %32 = call i32 @spin_lock(i32* @dlm_domain_lock)
  %33 = load i8*, i8** %4, align 8
  %34 = call %struct.dlm_ctxt* @__dlm_lookup_domain(i8* %33)
  store %struct.dlm_ctxt* %34, %struct.dlm_ctxt** %8, align 8
  %35 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %36 = icmp ne %struct.dlm_ctxt* %35, null
  br i1 %36, label %37, label %71

37:                                               ; preds = %31
  %38 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %39 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DLM_CTXT_JOINED, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  %45 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @dlm_domain_events, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @dlm_wait_on_domain_helper(i8* %47)
  %49 = call i32 @wait_event_interruptible(i32 %46, i32 %48)
  br label %22

50:                                               ; preds = %37
  %51 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %52 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %51, i32 0, i32 1
  %53 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %6, align 8
  %54 = call i64 @dlm_protocol_compare(%struct.dlm_protocol_version* %52, %struct.dlm_protocol_version* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  %58 = load i32, i32* @ML_ERROR, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 (i32, i8*, ...) @mlog(i32 %58, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @EPROTO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %116

63:                                               ; preds = %50
  %64 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %65 = call i32 @__dlm_get(%struct.dlm_ctxt* %64)
  %66 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %67 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  store i32 0, i32* %7, align 4
  br label %116

71:                                               ; preds = %31
  %72 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %73 = icmp ne %struct.dlm_ctxt* %72, null
  br i1 %73, label %87, label %74

74:                                               ; preds = %71
  %75 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call %struct.dlm_ctxt* @dlm_alloc_ctxt(i8* %76, i32 %77)
  store %struct.dlm_ctxt* %78, %struct.dlm_ctxt** %9, align 8
  %79 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %80 = icmp ne %struct.dlm_ctxt* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %22

82:                                               ; preds = %74
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %116

87:                                               ; preds = %71
  %88 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  store %struct.dlm_ctxt* %88, %struct.dlm_ctxt** %8, align 8
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %9, align 8
  %89 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %90 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %89, i32 0, i32 3
  %91 = call i32 @list_add_tail(i32* %90, i32* @dlm_domains)
  %92 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  %93 = load i32, i32* @dlm_protocol, align 4
  %94 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %95 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %97 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %96, i32 0, i32 1
  %98 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %6, align 8
  %99 = bitcast %struct.dlm_protocol_version* %97 to i8*
  %100 = bitcast %struct.dlm_protocol_version* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 4 %100, i64 4, i1 false)
  %101 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %102 = call i32 @dlm_join_domain(%struct.dlm_ctxt* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %87
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @mlog_errno(i32 %106)
  %108 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %109 = call i32 @dlm_put(%struct.dlm_ctxt* %108)
  br label %116

110:                                              ; preds = %87
  %111 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %6, align 8
  %112 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %113 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %112, i32 0, i32 1
  %114 = bitcast %struct.dlm_protocol_version* %111 to i8*
  %115 = bitcast %struct.dlm_protocol_version* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 8 %115, i64 4, i1 false)
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %110, %105, %82, %63, %56, %26, %14
  %117 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %118 = icmp ne %struct.dlm_ctxt* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %121 = call i32 @dlm_free_ctxt_mem(%struct.dlm_ctxt* %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = call %struct.dlm_ctxt* @ERR_PTR(i32 %126)
  store %struct.dlm_ctxt* %127, %struct.dlm_ctxt** %8, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  ret %struct.dlm_ctxt* %129
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_ctxt* @__dlm_lookup_domain(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @dlm_wait_on_domain_helper(i8*) #1

declare dso_local i64 @dlm_protocol_compare(%struct.dlm_protocol_version*, %struct.dlm_protocol_version*) #1

declare dso_local i32 @__dlm_get(%struct.dlm_ctxt*) #1

declare dso_local %struct.dlm_ctxt* @dlm_alloc_ctxt(i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dlm_join_domain(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_free_ctxt_mem(%struct.dlm_ctxt*) #1

declare dso_local %struct.dlm_ctxt* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
