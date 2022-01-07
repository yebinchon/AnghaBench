; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_check_qos_and_open_shortcut.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_check_qos_and_open_shortcut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_message = type { %struct.TYPE_17__, i32, %struct.TYPE_19__ }
%struct.TYPE_17__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.mpoa_client = type { %struct.TYPE_25__*, %struct.TYPE_23__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_16__*)*, %struct.TYPE_16__* (i32, %struct.mpoa_client*)* }
%struct.TYPE_16__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_22__* }
%struct.atm_mpoa_qos = type { %struct.TYPE_17__ }

@ATM_UBR = common dso_local global i32 0, align 4
@ATM_CBR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"(%s) using egress SVC to reach %pI4\0A\00", align 1
@OPEN_INGRESS_SVC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"(%s) trying to get a CBR shortcut\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_message*, %struct.mpoa_client*, %struct.TYPE_26__*)* @check_qos_and_open_shortcut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_qos_and_open_shortcut(%struct.k_message* %0, %struct.mpoa_client* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca %struct.k_message*, align 8
  %5 = alloca %struct.mpoa_client*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atm_mpoa_qos*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.k_message* %0, %struct.k_message** %4, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %5, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %6, align 8
  %10 = load %struct.k_message*, %struct.k_message** %4, align 8
  %11 = getelementptr inbounds %struct.k_message, %struct.k_message* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.atm_mpoa_qos* @atm_mpoa_search_qos(i32 %15)
  store %struct.atm_mpoa_qos* %16, %struct.atm_mpoa_qos** %8, align 8
  %17 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %18 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %17, i32 0, i32 1
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_16__* (i32, %struct.mpoa_client*)*, %struct.TYPE_16__* (i32, %struct.mpoa_client*)** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %24 = call %struct.TYPE_16__* %21(i32 %22, %struct.mpoa_client* %23)
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %9, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %26 = icmp ne %struct.TYPE_16__* %25, null
  br i1 %26, label %27, label %115

27:                                               ; preds = %3
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %31 = icmp ne %struct.TYPE_22__* %30, null
  br i1 %31, label %32, label %115

32:                                               ; preds = %27
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.k_message*, %struct.k_message** %4, align 8
  %41 = getelementptr inbounds %struct.k_message, %struct.k_message* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %39, %44
  %46 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %8, align 8
  %47 = icmp ne %struct.atm_mpoa_qos* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %32
  %49 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %8, align 8
  %50 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %58

54:                                               ; preds = %32
  %55 = load i32, i32* @ATM_UBR, align 4
  %56 = load i32, i32* @ATM_CBR, align 4
  %57 = or i32 %55, %56
  br label %58

58:                                               ; preds = %54, %48
  %59 = phi i32 [ %53, %48 ], [ %57, %54 ]
  %60 = and i32 %45, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %95

62:                                               ; preds = %58
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ATM_UBR, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  store %struct.TYPE_22__* %75, %struct.TYPE_22__** %77, align 8
  br label %94

78:                                               ; preds = %62
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  store %struct.TYPE_22__* %90, %struct.TYPE_22__** %92, align 8
  br label %93

93:                                               ; preds = %87, %78
  br label %94

94:                                               ; preds = %93, %72
  br label %95

95:                                               ; preds = %94, %58
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  %99 = icmp ne %struct.TYPE_22__* %98, null
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %102 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %101, i32 0, i32 0
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %105, i32* %7)
  %107 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %108 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %107, i32 0, i32 1
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %113 = call i32 %111(%struct.TYPE_16__* %112)
  br label %165

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %114, %27, %3
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %117 = icmp ne %struct.TYPE_16__* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %120 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %119, i32 0, i32 1
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %122, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %125 = call i32 %123(%struct.TYPE_16__* %124)
  br label %126

126:                                              ; preds = %118, %115
  %127 = load i32, i32* @OPEN_INGRESS_SVC, align 4
  %128 = load %struct.k_message*, %struct.k_message** %4, align 8
  %129 = getelementptr inbounds %struct.k_message, %struct.k_message* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %8, align 8
  %131 = icmp ne %struct.atm_mpoa_qos* %130, null
  br i1 %131, label %132, label %157

132:                                              ; preds = %126
  %133 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %8, align 8
  %134 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.k_message*, %struct.k_message** %4, align 8
  %139 = getelementptr inbounds %struct.k_message, %struct.k_message* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %137, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %132
  %145 = load %struct.k_message*, %struct.k_message** %4, align 8
  %146 = getelementptr inbounds %struct.k_message, %struct.k_message* %145, i32 0, i32 0
  %147 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %8, align 8
  %148 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %147, i32 0, i32 0
  %149 = bitcast %struct.TYPE_17__* %146 to i8*
  %150 = bitcast %struct.TYPE_17__* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 4, i1 false)
  %151 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %152 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %151, i32 0, i32 0
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  br label %161

157:                                              ; preds = %132, %126
  %158 = load %struct.k_message*, %struct.k_message** %4, align 8
  %159 = getelementptr inbounds %struct.k_message, %struct.k_message* %158, i32 0, i32 0
  %160 = call i32 @memset(%struct.TYPE_17__* %159, i32 0, i32 4)
  br label %161

161:                                              ; preds = %157, %144
  %162 = load %struct.k_message*, %struct.k_message** %4, align 8
  %163 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %164 = call i32 @msg_to_mpoad(%struct.k_message* %162, %struct.mpoa_client* %163)
  br label %165

165:                                              ; preds = %161, %100
  ret void
}

declare dso_local %struct.atm_mpoa_qos* @atm_mpoa_search_qos(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @msg_to_mpoad(%struct.k_message*, %struct.mpoa_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
