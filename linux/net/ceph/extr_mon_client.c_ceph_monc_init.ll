; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mon_client = type { i32, i32, i32, i32*, %struct.TYPE_7__*, i8*, i8*, i8*, i32, i64, i32, i32, %struct.ceph_client*, i32, i8*, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ceph_client = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"init\0A\00", align 1
@CEPH_ENTITY_TYPE_AUTH = common dso_local global i32 0, align 4
@CEPH_ENTITY_TYPE_MON = common dso_local global i32 0, align 4
@CEPH_ENTITY_TYPE_OSD = common dso_local global i32 0, align 4
@CEPH_ENTITY_TYPE_MDS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_MSG_MON_SUBSCRIBE_ACK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CEPH_MSG_MON_SUBSCRIBE = common dso_local global i32 0, align 4
@CEPH_MSG_AUTH_REPLY = common dso_local global i32 0, align 4
@CEPH_MSG_AUTH = common dso_local global i32 0, align 4
@mon_con_ops = common dso_local global i32 0, align 4
@delayed_work = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@CEPH_FS_CLUSTER_ID_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_monc_init(%struct.ceph_mon_client* %0, %struct.ceph_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_mon_client*, align 8
  %5 = alloca %struct.ceph_client*, align 8
  %6 = alloca i32, align 4
  store %struct.ceph_mon_client* %0, %struct.ceph_mon_client** %4, align 8
  store %struct.ceph_client* %1, %struct.ceph_client** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @dout(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %9 = call i32 @memset(%struct.ceph_mon_client* %8, i32 0, i32 120)
  %10 = load %struct.ceph_client*, %struct.ceph_client** %5, align 8
  %11 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %12 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %11, i32 0, i32 12
  store %struct.ceph_client* %10, %struct.ceph_client** %12, align 8
  %13 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %14 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %15, i32 0, i32 16
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %19 = call i32 @build_initial_monmap(%struct.ceph_mon_client* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %158

23:                                               ; preds = %2
  %24 = load %struct.ceph_client*, %struct.ceph_client** %5, align 8
  %25 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ceph_client*, %struct.ceph_client** %5, align 8
  %30 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_7__* @ceph_auth_init(i32 %28, i32 %33)
  %35 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %36 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %35, i32 0, i32 4
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %36, align 8
  %37 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %38 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %37, i32 0, i32 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = call i64 @IS_ERR(%struct.TYPE_7__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %23
  %43 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %44 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %43, i32 0, i32 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = call i32 @PTR_ERR(%struct.TYPE_7__* %45)
  store i32 %46, i32* %6, align 4
  br label %153

47:                                               ; preds = %23
  %48 = load i32, i32* @CEPH_ENTITY_TYPE_AUTH, align 4
  %49 = load i32, i32* @CEPH_ENTITY_TYPE_MON, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @CEPH_ENTITY_TYPE_OSD, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CEPH_ENTITY_TYPE_MDS, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %56 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %55, i32 0, i32 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @CEPH_MSG_MON_SUBSCRIBE_ACK, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @ceph_msg_new(i32 %61, i32 4, i32 %62, i32 1)
  %64 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %65 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %67 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %66, i32 0, i32 5
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %47
  br label %148

71:                                               ; preds = %47
  %72 = load i32, i32* @CEPH_MSG_MON_SUBSCRIBE, align 4
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @ceph_msg_new(i32 %72, i32 128, i32 %73, i32 1)
  %75 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %76 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %78 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %77, i32 0, i32 6
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %71
  br label %143

82:                                               ; preds = %71
  %83 = load i32, i32* @CEPH_MSG_AUTH_REPLY, align 4
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @ceph_msg_new(i32 %83, i32 4096, i32 %84, i32 1)
  %86 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %87 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %86, i32 0, i32 7
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %89 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %88, i32 0, i32 7
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %82
  br label %138

93:                                               ; preds = %82
  %94 = load i32, i32* @CEPH_MSG_AUTH, align 4
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @ceph_msg_new(i32 %94, i32 4096, i32 %95, i32 1)
  %97 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %98 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %97, i32 0, i32 14
  store i8* %96, i8** %98, align 8
  %99 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %100 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %99, i32 0, i32 15
  store i64 0, i64* %100, align 8
  %101 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %102 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %101, i32 0, i32 14
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %93
  br label %133

106:                                              ; preds = %93
  %107 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %108 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %107, i32 0, i32 13
  %109 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %110 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %111 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %110, i32 0, i32 12
  %112 = load %struct.ceph_client*, %struct.ceph_client** %111, align 8
  %113 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %112, i32 0, i32 0
  %114 = call i32 @ceph_con_init(i32* %108, %struct.ceph_mon_client* %109, i32* @mon_con_ops, i32* %113)
  %115 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %116 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %115, i32 0, i32 0
  store i32 -1, i32* %116, align 8
  %117 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %118 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  %119 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %120 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %119, i32 0, i32 2
  store i32 1, i32* %120, align 8
  %121 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %122 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %121, i32 0, i32 11
  %123 = load i32, i32* @delayed_work, align 4
  %124 = call i32 @INIT_DELAYED_WORK(i32* %122, i32 %123)
  %125 = load i32, i32* @RB_ROOT, align 4
  %126 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %127 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %126, i32 0, i32 10
  store i32 %125, i32* %127, align 8
  %128 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %129 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %128, i32 0, i32 9
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* @CEPH_FS_CLUSTER_ID_NONE, align 4
  %131 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %132 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %131, i32 0, i32 8
  store i32 %130, i32* %132, align 8
  store i32 0, i32* %3, align 4
  br label %160

133:                                              ; preds = %105
  %134 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %135 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %134, i32 0, i32 7
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @ceph_msg_put(i8* %136)
  br label %138

138:                                              ; preds = %133, %92
  %139 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %140 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %139, i32 0, i32 6
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @ceph_msg_put(i8* %141)
  br label %143

143:                                              ; preds = %138, %81
  %144 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %145 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %144, i32 0, i32 5
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @ceph_msg_put(i8* %146)
  br label %148

148:                                              ; preds = %143, %70
  %149 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %150 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %149, i32 0, i32 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = call i32 @ceph_auth_destroy(%struct.TYPE_7__* %151)
  br label %153

153:                                              ; preds = %148, %42
  %154 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %155 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @kfree(i32* %156)
  br label %158

158:                                              ; preds = %153, %22
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %106
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @dout(i8*) #1

declare dso_local i32 @memset(%struct.ceph_mon_client*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @build_initial_monmap(%struct.ceph_mon_client*) #1

declare dso_local %struct.TYPE_7__* @ceph_auth_init(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i8* @ceph_msg_new(i32, i32, i32, i32) #1

declare dso_local i32 @ceph_con_init(i32*, %struct.ceph_mon_client*, i32*, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ceph_msg_put(i8*) #1

declare dso_local i32 @ceph_auth_destroy(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
