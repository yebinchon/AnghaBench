; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_compute_av.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_compute_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab = type { i32 }
%struct.avtab_key = type { i32 }
%struct.av_decision = type { i32, i32, i32 }
%struct.extended_perms = type { i32 }
%struct.avtab_node = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AVTAB_ALLOWED = common dso_local global i32 0, align 4
@AVTAB_ENABLED = common dso_local global i32 0, align 4
@AVTAB_AUDITDENY = common dso_local global i32 0, align 4
@AVTAB_AUDITALLOW = common dso_local global i32 0, align 4
@AVTAB_XPERMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cond_compute_av(%struct.avtab* %0, %struct.avtab_key* %1, %struct.av_decision* %2, %struct.extended_perms* %3) #0 {
  %5 = alloca %struct.avtab*, align 8
  %6 = alloca %struct.avtab_key*, align 8
  %7 = alloca %struct.av_decision*, align 8
  %8 = alloca %struct.extended_perms*, align 8
  %9 = alloca %struct.avtab_node*, align 8
  store %struct.avtab* %0, %struct.avtab** %5, align 8
  store %struct.avtab_key* %1, %struct.avtab_key** %6, align 8
  store %struct.av_decision* %2, %struct.av_decision** %7, align 8
  store %struct.extended_perms* %3, %struct.extended_perms** %8, align 8
  %10 = load %struct.avtab*, %struct.avtab** %5, align 8
  %11 = icmp ne %struct.avtab* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %14 = icmp ne %struct.avtab_key* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.av_decision*, %struct.av_decision** %7, align 8
  %17 = icmp ne %struct.av_decision* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %12, %4
  br label %125

19:                                               ; preds = %15
  %20 = load %struct.avtab*, %struct.avtab** %5, align 8
  %21 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %22 = call %struct.avtab_node* @avtab_search_node(%struct.avtab* %20, %struct.avtab_key* %21)
  store %struct.avtab_node* %22, %struct.avtab_node** %9, align 8
  br label %23

23:                                               ; preds = %119, %19
  %24 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %25 = icmp ne %struct.avtab_node* %24, null
  br i1 %25, label %26, label %125

26:                                               ; preds = %23
  %27 = load i32, i32* @AVTAB_ALLOWED, align 4
  %28 = load i32, i32* @AVTAB_ENABLED, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %31 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AVTAB_ALLOWED, align 4
  %35 = load i32, i32* @AVTAB_ENABLED, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp eq i32 %29, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %26
  %40 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %41 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.av_decision*, %struct.av_decision** %7, align 8
  %46 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %39, %26
  %50 = load i32, i32* @AVTAB_AUDITDENY, align 4
  %51 = load i32, i32* @AVTAB_ENABLED, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %54 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AVTAB_AUDITDENY, align 4
  %58 = load i32, i32* @AVTAB_ENABLED, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp eq i32 %52, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %49
  %63 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %64 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.av_decision*, %struct.av_decision** %7, align 8
  %69 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %62, %49
  %73 = load i32, i32* @AVTAB_AUDITALLOW, align 4
  %74 = load i32, i32* @AVTAB_ENABLED, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %77 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AVTAB_AUDITALLOW, align 4
  %81 = load i32, i32* @AVTAB_ENABLED, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp eq i32 %75, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %72
  %86 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %87 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.av_decision*, %struct.av_decision** %7, align 8
  %92 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %85, %72
  %96 = load %struct.extended_perms*, %struct.extended_perms** %8, align 8
  %97 = icmp ne %struct.extended_perms* %96, null
  br i1 %97, label %98, label %118

98:                                               ; preds = %95
  %99 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %100 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @AVTAB_ENABLED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %108 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @AVTAB_XPERMS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load %struct.extended_perms*, %struct.extended_perms** %8, align 8
  %116 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %117 = call i32 @services_compute_xperms_drivers(%struct.extended_perms* %115, %struct.avtab_node* %116)
  br label %118

118:                                              ; preds = %114, %106, %98, %95
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %121 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %122 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.avtab_node* @avtab_search_node_next(%struct.avtab_node* %120, i32 %123)
  store %struct.avtab_node* %124, %struct.avtab_node** %9, align 8
  br label %23

125:                                              ; preds = %18, %23
  ret void
}

declare dso_local %struct.avtab_node* @avtab_search_node(%struct.avtab*, %struct.avtab_key*) #1

declare dso_local i32 @services_compute_xperms_drivers(%struct.extended_perms*, %struct.avtab_node*) #1

declare dso_local %struct.avtab_node* @avtab_search_node_next(%struct.avtab_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
