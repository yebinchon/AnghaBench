; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_selinux_audit_rule_init.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_selinux_audit_rule_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.policydb }
%struct.policydb = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.selinux_audit_rule = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.role_datum = type { i32 }
%struct.type_datum = type { i32 }
%struct.user_datum = type { i32 }

@selinux_state = common dso_local global %struct.selinux_state zeroinitializer, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@Audit_equal = common dso_local global i32 0, align 4
@Audit_not_equal = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_audit_rule_init(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.selinux_state*, align 8
  %11 = alloca %struct.policydb*, align 8
  %12 = alloca %struct.selinux_audit_rule*, align 8
  %13 = alloca %struct.role_datum*, align 8
  %14 = alloca %struct.type_datum*, align 8
  %15 = alloca %struct.user_datum*, align 8
  %16 = alloca %struct.selinux_audit_rule**, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store %struct.selinux_state* @selinux_state, %struct.selinux_state** %10, align 8
  %18 = load %struct.selinux_state*, %struct.selinux_state** %10, align 8
  %19 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  store %struct.policydb* %21, %struct.policydb** %11, align 8
  %22 = load i8**, i8*** %9, align 8
  %23 = bitcast i8** %22 to %struct.selinux_audit_rule**
  store %struct.selinux_audit_rule** %23, %struct.selinux_audit_rule*** %16, align 8
  store i32 0, i32* %17, align 4
  %24 = load %struct.selinux_audit_rule**, %struct.selinux_audit_rule*** %16, align 8
  store %struct.selinux_audit_rule* null, %struct.selinux_audit_rule** %24, align 8
  %25 = load %struct.selinux_state*, %struct.selinux_state** %10, align 8
  %26 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %169

32:                                               ; preds = %4
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %54 [
    i32 128, label %34
    i32 131, label %34
    i32 129, label %34
    i32 133, label %34
    i32 135, label %34
    i32 134, label %34
    i32 130, label %46
    i32 132, label %46
    i32 136, label %46
    i32 137, label %46
  ]

34:                                               ; preds = %32, %32, %32, %32, %32, %32
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @Audit_equal, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @Audit_not_equal, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %169

45:                                               ; preds = %38, %34
  br label %57

46:                                               ; preds = %32, %32, %32, %32
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @strchr(i8* %47, i8 signext 45)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %169

53:                                               ; preds = %46
  br label %57

54:                                               ; preds = %32
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %169

57:                                               ; preds = %53, %45
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.selinux_audit_rule* @kzalloc(i32 16, i32 %58)
  store %struct.selinux_audit_rule* %59, %struct.selinux_audit_rule** %12, align 8
  %60 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %12, align 8
  %61 = icmp ne %struct.selinux_audit_rule* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %169

65:                                               ; preds = %57
  %66 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %12, align 8
  %67 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %66, i32 0, i32 0
  %68 = call i32 @context_init(%struct.TYPE_11__* %67)
  %69 = load %struct.selinux_state*, %struct.selinux_state** %10, align 8
  %70 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = call i32 @read_lock(i32* %72)
  %74 = load %struct.selinux_state*, %struct.selinux_state** %10, align 8
  %75 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %12, align 8
  %80 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %6, align 4
  switch i32 %81, label %153 [
    i32 128, label %82
    i32 133, label %82
    i32 131, label %102
    i32 135, label %102
    i32 129, label %122
    i32 134, label %122
    i32 130, label %142
    i32 132, label %142
    i32 136, label %142
    i32 137, label %142
  ]

82:                                               ; preds = %65, %65
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %17, align 4
  %85 = load %struct.policydb*, %struct.policydb** %11, align 8
  %86 = getelementptr inbounds %struct.policydb, %struct.policydb* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = call i8* @hashtab_search(i32 %88, i8* %89)
  %91 = bitcast i8* %90 to %struct.user_datum*
  store %struct.user_datum* %91, %struct.user_datum** %15, align 8
  %92 = load %struct.user_datum*, %struct.user_datum** %15, align 8
  %93 = icmp ne %struct.user_datum* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %82
  br label %154

95:                                               ; preds = %82
  %96 = load %struct.user_datum*, %struct.user_datum** %15, align 8
  %97 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %12, align 8
  %100 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 4
  br label %153

102:                                              ; preds = %65, %65
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %17, align 4
  %105 = load %struct.policydb*, %struct.policydb** %11, align 8
  %106 = getelementptr inbounds %struct.policydb, %struct.policydb* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = call i8* @hashtab_search(i32 %108, i8* %109)
  %111 = bitcast i8* %110 to %struct.role_datum*
  store %struct.role_datum* %111, %struct.role_datum** %13, align 8
  %112 = load %struct.role_datum*, %struct.role_datum** %13, align 8
  %113 = icmp ne %struct.role_datum* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %102
  br label %154

115:                                              ; preds = %102
  %116 = load %struct.role_datum*, %struct.role_datum** %13, align 8
  %117 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %12, align 8
  %120 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  br label %153

122:                                              ; preds = %65, %65
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %17, align 4
  %125 = load %struct.policydb*, %struct.policydb** %11, align 8
  %126 = getelementptr inbounds %struct.policydb, %struct.policydb* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %8, align 8
  %130 = call i8* @hashtab_search(i32 %128, i8* %129)
  %131 = bitcast i8* %130 to %struct.type_datum*
  store %struct.type_datum* %131, %struct.type_datum** %14, align 8
  %132 = load %struct.type_datum*, %struct.type_datum** %14, align 8
  %133 = icmp ne %struct.type_datum* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %122
  br label %154

135:                                              ; preds = %122
  %136 = load %struct.type_datum*, %struct.type_datum** %14, align 8
  %137 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %12, align 8
  %140 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 4
  br label %153

142:                                              ; preds = %65, %65, %65, %65
  %143 = load %struct.policydb*, %struct.policydb** %11, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %12, align 8
  %146 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %145, i32 0, i32 0
  %147 = load i32, i32* @GFP_ATOMIC, align 4
  %148 = call i32 @mls_from_string(%struct.policydb* %143, i8* %144, %struct.TYPE_11__* %146, i32 %147)
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %154

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %65, %152, %135, %115, %95
  store i32 0, i32* %17, align 4
  br label %154

154:                                              ; preds = %153, %151, %134, %114, %94
  %155 = load %struct.selinux_state*, %struct.selinux_state** %10, align 8
  %156 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %155, i32 0, i32 0
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = call i32 @read_unlock(i32* %158)
  %160 = load i32, i32* %17, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %154
  %163 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %12, align 8
  %164 = call i32 @selinux_audit_rule_free(%struct.selinux_audit_rule* %163)
  store %struct.selinux_audit_rule* null, %struct.selinux_audit_rule** %12, align 8
  br label %165

165:                                              ; preds = %162, %154
  %166 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %12, align 8
  %167 = load %struct.selinux_audit_rule**, %struct.selinux_audit_rule*** %16, align 8
  store %struct.selinux_audit_rule* %166, %struct.selinux_audit_rule** %167, align 8
  %168 = load i32, i32* %17, align 4
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %165, %62, %54, %50, %42, %29
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local %struct.selinux_audit_rule* @kzalloc(i32, i32) #1

declare dso_local i32 @context_init(%struct.TYPE_11__*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i8* @hashtab_search(i32, i8*) #1

declare dso_local i32 @mls_from_string(%struct.policydb*, i8*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @selinux_audit_rule_free(%struct.selinux_audit_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
