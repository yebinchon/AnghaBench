; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_set_bools.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_set_bools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.policydb }
%struct.policydb = type { %struct.cond_node*, %struct.TYPE_5__**, %struct.TYPE_4__ }
%struct.cond_node = type { %struct.cond_node* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AUDIT_MAC_CONFIG_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bool=%s val=%d old_val=%d auid=%u ses=%u\00", align 1
@SYM_BOOLS = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_set_bools(%struct.selinux_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.selinux_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.policydb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cond_node*, align 8
  store %struct.selinux_state* %0, %struct.selinux_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %14 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = call i32 @write_lock_irq(i32* %16)
  %18 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %19 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store %struct.policydb* %21, %struct.policydb** %7, align 8
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.policydb*, %struct.policydb** %7, align 8
  %25 = getelementptr inbounds %struct.policydb, %struct.policydb* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %144

32:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %115, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %118

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.policydb*, %struct.policydb** %7, align 8
  %48 = getelementptr inbounds %struct.policydb, %struct.policydb* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %49, i64 %51
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %46, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %37
  %58 = call i32 (...) @audit_context()
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = load i32, i32* @AUDIT_MAC_CONFIG_CHANGE, align 4
  %61 = load %struct.policydb*, %struct.policydb** %7, align 8
  %62 = load i32, i32* @SYM_BOOLS, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @sym_name(%struct.policydb* %61, i32 %62, i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.policydb*, %struct.policydb** %7, align 8
  %75 = getelementptr inbounds %struct.policydb, %struct.policydb* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %76, i64 %78
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @current, align 4
  %84 = call i32 @audit_get_loginuid(i32 %83)
  %85 = call i32 @from_kuid(i32* @init_user_ns, i32 %84)
  %86 = load i32, i32* @current, align 4
  %87 = call i32 @audit_get_sessionid(i32 %86)
  %88 = call i32 @audit_log(i32 %58, i32 %59, i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %73, i32 %82, i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %57, %37
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %89
  %97 = load %struct.policydb*, %struct.policydb** %7, align 8
  %98 = getelementptr inbounds %struct.policydb, %struct.policydb* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %99, i64 %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  br label %114

105:                                              ; preds = %89
  %106 = load %struct.policydb*, %struct.policydb** %7, align 8
  %107 = getelementptr inbounds %struct.policydb, %struct.policydb* %106, i32 0, i32 1
  %108 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %108, i64 %110
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %105, %96
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %33

118:                                              ; preds = %33
  %119 = load %struct.policydb*, %struct.policydb** %7, align 8
  %120 = getelementptr inbounds %struct.policydb, %struct.policydb* %119, i32 0, i32 0
  %121 = load %struct.cond_node*, %struct.cond_node** %120, align 8
  store %struct.cond_node* %121, %struct.cond_node** %12, align 8
  br label %122

122:                                              ; preds = %133, %118
  %123 = load %struct.cond_node*, %struct.cond_node** %12, align 8
  %124 = icmp ne %struct.cond_node* %123, null
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load %struct.policydb*, %struct.policydb** %7, align 8
  %127 = load %struct.cond_node*, %struct.cond_node** %12, align 8
  %128 = call i32 @evaluate_cond_node(%struct.policydb* %126, %struct.cond_node* %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %144

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.cond_node*, %struct.cond_node** %12, align 8
  %135 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %134, i32 0, i32 0
  %136 = load %struct.cond_node*, %struct.cond_node** %135, align 8
  store %struct.cond_node* %136, %struct.cond_node** %12, align 8
  br label %122

137:                                              ; preds = %122
  %138 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %139 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %138, i32 0, i32 1
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  store i32 %143, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %137, %131, %31
  %145 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %146 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = call i32 @write_unlock_irq(i32* %148)
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %164, label %152

152:                                              ; preds = %144
  %153 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %154 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @avc_ss_reset(i32 %155, i32 %156)
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @selnl_notify_policyload(i32 %158)
  %160 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @selinux_status_update_policyload(%struct.selinux_state* %160, i32 %161)
  %163 = call i32 (...) @selinux_xfrm_notify_policyload()
  br label %164

164:                                              ; preds = %152, %144
  %165 = load i32, i32* %9, align 4
  ret i32 %165
}

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @audit_log(i32, i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i32 @sym_name(%struct.policydb*, i32, i32) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @audit_get_loginuid(i32) #1

declare dso_local i32 @audit_get_sessionid(i32) #1

declare dso_local i32 @evaluate_cond_node(%struct.policydb*, %struct.cond_node*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @avc_ss_reset(i32, i32) #1

declare dso_local i32 @selnl_notify_policyload(i32) #1

declare dso_local i32 @selinux_status_update_policyload(%struct.selinux_state*, i32) #1

declare dso_local i32 @selinux_xfrm_notify_policyload(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
