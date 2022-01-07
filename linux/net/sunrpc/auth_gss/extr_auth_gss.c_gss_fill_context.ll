; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_fill_context.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_fill_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_cl_ctx = type { i64, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gss_api_mech = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@GSSD_MIN_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@EKEYEXPIRED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.gss_cl_ctx*, %struct.gss_api_mech*)* @gss_fill_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gss_fill_context(i8* %0, i8* %1, %struct.gss_cl_ctx* %2, %struct.gss_api_mech* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gss_cl_ctx*, align 8
  %8 = alloca %struct.gss_api_mech*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.gss_cl_ctx* %2, %struct.gss_cl_ctx** %7, align 8
  store %struct.gss_api_mech* %3, %struct.gss_api_mech** %8, align 8
  %15 = load i64, i64* @jiffies, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* (i8*, i8*, ...) @simple_get_bytes(i8* %16, i8* %17, i32* %11, i64 4)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @IS_ERR(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %161

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @GSSD_MIN_TIMEOUT, align 4
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* @HZ, align 8
  %33 = mul i64 %31, %32
  %34 = add i64 %29, %33
  %35 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* (i8*, i8*, ...) @simple_get_bytes(i8* %37, i8* %38, i32* %13, i64 4)
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %161

44:                                               ; preds = %28
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %44
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i8* (i8*, i8*, ...) @simple_get_bytes(i8* %53, i8* %54, i32* %14, i64 4)
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @EKEYEXPIRED, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @EKEYEXPIRED, align 4
  %66 = sub nsw i32 0, %65
  %67 = call i8* @ERR_PTR(i32 %66)
  br label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @EACCES, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i8* @ERR_PTR(i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i8* [ %67, %64 ], [ %71, %68 ]
  store i8* %73, i8** %5, align 8
  br label %74

74:                                               ; preds = %72, %52
  br label %161

75:                                               ; preds = %44
  %76 = load i8*, i8** %5, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %78, i32 0, i32 4
  %80 = call i8* @simple_get_netobj(i8* %76, i8* %77, %struct.TYPE_2__* %79)
  store i8* %80, i8** %5, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i64 @IS_ERR(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %161

85:                                               ; preds = %75
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i8* (i8*, i8*, ...) @simple_get_bytes(i8* %86, i8* %87, i32* %10, i64 4)
  store i8* %88, i8** %5, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = call i64 @IS_ERR(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %161

93:                                               ; preds = %85
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8* %97, i8** %9, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = icmp ugt i8* %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %93
  %102 = load i8*, i8** %9, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = icmp ult i8* %102, %103
  br label %105

105:                                              ; preds = %101, %93
  %106 = phi i1 [ true, %93 ], [ %104, %101 ]
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @EFAULT, align 4
  %112 = sub nsw i32 0, %111
  %113 = call i8* @ERR_PTR(i32 %112)
  store i8* %113, i8** %5, align 8
  br label %161

114:                                              ; preds = %105
  %115 = load i8*, i8** %5, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.gss_api_mech*, %struct.gss_api_mech** %8, align 8
  %118 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %119 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %118, i32 0, i32 3
  %120 = load i32, i32* @GFP_NOFS, align 4
  %121 = call i32 @gss_import_sec_context(i8* %115, i32 %116, %struct.gss_api_mech* %117, i32* %119, i32* null, i32 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @trace_rpcgss_import_ctx(i32 %125)
  %127 = load i32, i32* %14, align 4
  %128 = call i8* @ERR_PTR(i32 %127)
  store i8* %128, i8** %5, align 8
  br label %161

129:                                              ; preds = %114
  %130 = load i8*, i8** %9, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = icmp eq i8* %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i8*, i8** %9, align 8
  store i8* %134, i8** %5, align 8
  br label %146

135:                                              ; preds = %129
  %136 = load i8*, i8** %9, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %139 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %138, i32 0, i32 2
  %140 = call i8* @simple_get_netobj(i8* %136, i8* %137, %struct.TYPE_2__* %139)
  store i8* %140, i8** %5, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = call i64 @IS_ERR(i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %161

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %133
  %147 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %148 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %12, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %153 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %157 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @trace_rpcgss_context(i64 %149, i64 %150, i32 %151, i32 %155, i32 %159)
  br label %161

161:                                              ; preds = %146, %144, %124, %110, %92, %84, %74, %43, %22
  %162 = load i8*, i8** %5, align 8
  ret i8* %162
}

declare dso_local i8* @simple_get_bytes(i8*, i8*, ...) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @simple_get_netobj(i8*, i8*, %struct.TYPE_2__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gss_import_sec_context(i8*, i32, %struct.gss_api_mech*, i32*, i32*, i32) #1

declare dso_local i32 @trace_rpcgss_import_ctx(i32) #1

declare dso_local i32 @trace_rpcgss_context(i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
