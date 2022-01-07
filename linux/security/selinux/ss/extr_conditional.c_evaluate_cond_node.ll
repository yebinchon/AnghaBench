; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_evaluate_cond_node.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_evaluate_cond_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.cond_node = type { i32, %struct.cond_av_list*, %struct.cond_av_list*, i32 }
%struct.cond_av_list = type { %struct.TYPE_4__*, %struct.cond_av_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"SELinux: expression result was undefined - disabling all rules.\0A\00", align 1
@AVTAB_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evaluate_cond_node(%struct.policydb* %0, %struct.cond_node* %1) #0 {
  %3 = alloca %struct.policydb*, align 8
  %4 = alloca %struct.cond_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cond_av_list*, align 8
  store %struct.policydb* %0, %struct.policydb** %3, align 8
  store %struct.cond_node* %1, %struct.cond_node** %4, align 8
  %7 = load %struct.policydb*, %struct.policydb** %3, align 8
  %8 = load %struct.cond_node*, %struct.cond_node** %4, align 8
  %9 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @cond_evaluate_expr(%struct.policydb* %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.cond_node*, %struct.cond_node** %4, align 8
  %14 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %94

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.cond_node*, %struct.cond_node** %4, align 8
  %20 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17
  %26 = load %struct.cond_node*, %struct.cond_node** %4, align 8
  %27 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %26, i32 0, i32 2
  %28 = load %struct.cond_av_list*, %struct.cond_av_list** %27, align 8
  store %struct.cond_av_list* %28, %struct.cond_av_list** %6, align 8
  br label %29

29:                                               ; preds = %55, %25
  %30 = load %struct.cond_av_list*, %struct.cond_av_list** %6, align 8
  %31 = icmp ne %struct.cond_av_list* %30, null
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32, i32* @AVTAB_ENABLED, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.cond_av_list*, %struct.cond_av_list** %6, align 8
  %39 = getelementptr inbounds %struct.cond_av_list, %struct.cond_av_list* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %37
  store i32 %44, i32* %42, align 4
  br label %54

45:                                               ; preds = %32
  %46 = load i32, i32* @AVTAB_ENABLED, align 4
  %47 = load %struct.cond_av_list*, %struct.cond_av_list** %6, align 8
  %48 = getelementptr inbounds %struct.cond_av_list, %struct.cond_av_list* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %46
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %45, %35
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.cond_av_list*, %struct.cond_av_list** %6, align 8
  %57 = getelementptr inbounds %struct.cond_av_list, %struct.cond_av_list* %56, i32 0, i32 1
  %58 = load %struct.cond_av_list*, %struct.cond_av_list** %57, align 8
  store %struct.cond_av_list* %58, %struct.cond_av_list** %6, align 8
  br label %29

59:                                               ; preds = %29
  %60 = load %struct.cond_node*, %struct.cond_node** %4, align 8
  %61 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %60, i32 0, i32 1
  %62 = load %struct.cond_av_list*, %struct.cond_av_list** %61, align 8
  store %struct.cond_av_list* %62, %struct.cond_av_list** %6, align 8
  br label %63

63:                                               ; preds = %89, %59
  %64 = load %struct.cond_av_list*, %struct.cond_av_list** %6, align 8
  %65 = icmp ne %struct.cond_av_list* %64, null
  br i1 %65, label %66, label %93

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32, i32* @AVTAB_ENABLED, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.cond_av_list*, %struct.cond_av_list** %6, align 8
  %73 = getelementptr inbounds %struct.cond_av_list, %struct.cond_av_list* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %71
  store i32 %78, i32* %76, align 4
  br label %88

79:                                               ; preds = %66
  %80 = load i32, i32* @AVTAB_ENABLED, align 4
  %81 = load %struct.cond_av_list*, %struct.cond_av_list** %6, align 8
  %82 = getelementptr inbounds %struct.cond_av_list, %struct.cond_av_list* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %80
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %79, %69
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.cond_av_list*, %struct.cond_av_list** %6, align 8
  %91 = getelementptr inbounds %struct.cond_av_list, %struct.cond_av_list* %90, i32 0, i32 1
  %92 = load %struct.cond_av_list*, %struct.cond_av_list** %91, align 8
  store %struct.cond_av_list* %92, %struct.cond_av_list** %6, align 8
  br label %63

93:                                               ; preds = %63
  br label %94

94:                                               ; preds = %93, %2
  ret i32 0
}

declare dso_local i32 @cond_evaluate_expr(%struct.policydb*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
