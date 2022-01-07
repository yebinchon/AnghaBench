; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_insert.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab = type { %struct.avtab_node**, i32 }
%struct.avtab_node = type { %struct.TYPE_2__, %struct.avtab_node* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.avtab_key = type { i32, i64, i64, i64 }
%struct.avtab_datum = type { i32 }

@AVTAB_ENABLED = common dso_local global i32 0, align 4
@AVTAB_ENABLED_OLD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AVTAB_XPERMS = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.avtab*, %struct.avtab_key*, %struct.avtab_datum*)* @avtab_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avtab_insert(%struct.avtab* %0, %struct.avtab_key* %1, %struct.avtab_datum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.avtab*, align 8
  %6 = alloca %struct.avtab_key*, align 8
  %7 = alloca %struct.avtab_datum*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.avtab_node*, align 8
  %10 = alloca %struct.avtab_node*, align 8
  %11 = alloca %struct.avtab_node*, align 8
  %12 = alloca i32, align 4
  store %struct.avtab* %0, %struct.avtab** %5, align 8
  store %struct.avtab_key* %1, %struct.avtab_key** %6, align 8
  store %struct.avtab_datum* %2, %struct.avtab_datum** %7, align 8
  %13 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %14 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @AVTAB_ENABLED, align 4
  %17 = load i32, i32* @AVTAB_ENABLED_OLD, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.avtab*, %struct.avtab** %5, align 8
  %22 = icmp ne %struct.avtab* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %163

26:                                               ; preds = %3
  %27 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %28 = load %struct.avtab*, %struct.avtab** %5, align 8
  %29 = getelementptr inbounds %struct.avtab, %struct.avtab* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @avtab_hash(%struct.avtab_key* %27, i32 %30)
  store i32 %31, i32* %8, align 4
  store %struct.avtab_node* null, %struct.avtab_node** %9, align 8
  %32 = load %struct.avtab*, %struct.avtab** %5, align 8
  %33 = getelementptr inbounds %struct.avtab, %struct.avtab* %32, i32 0, i32 0
  %34 = load %struct.avtab_node**, %struct.avtab_node*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %34, i64 %36
  %38 = load %struct.avtab_node*, %struct.avtab_node** %37, align 8
  store %struct.avtab_node* %38, %struct.avtab_node** %10, align 8
  br label %39

39:                                               ; preds = %144, %26
  %40 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %41 = icmp ne %struct.avtab_node* %40, null
  br i1 %41, label %42, label %149

42:                                               ; preds = %39
  %43 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %44 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %47 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %45, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %42
  %52 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %53 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %56 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %51
  %61 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %62 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %65 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %63, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %60
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %72 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %70, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @AVTAB_XPERMS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %149

83:                                               ; preds = %77
  %84 = load i32, i32* @EEXIST, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %163

86:                                               ; preds = %69, %60, %51, %42
  %87 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %88 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %91 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %89, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %149

96:                                               ; preds = %86
  %97 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %98 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %101 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %99, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %96
  %106 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %107 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %110 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %108, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %149

115:                                              ; preds = %105, %96
  %116 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %117 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %120 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %118, %122
  br i1 %123, label %124, label %143

124:                                              ; preds = %115
  %125 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %126 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %129 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %127, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %124
  %134 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %135 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %138 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp slt i64 %136, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %149

143:                                              ; preds = %133, %124, %115
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  store %struct.avtab_node* %145, %struct.avtab_node** %9, align 8
  %146 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %147 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %146, i32 0, i32 1
  %148 = load %struct.avtab_node*, %struct.avtab_node** %147, align 8
  store %struct.avtab_node* %148, %struct.avtab_node** %10, align 8
  br label %39

149:                                              ; preds = %142, %114, %95, %82, %39
  %150 = load %struct.avtab*, %struct.avtab** %5, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %153 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %154 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %155 = load %struct.avtab_datum*, %struct.avtab_datum** %7, align 8
  %156 = call %struct.avtab_node* @avtab_insert_node(%struct.avtab* %150, i32 %151, %struct.avtab_node* %152, %struct.avtab_node* %153, %struct.avtab_key* %154, %struct.avtab_datum* %155)
  store %struct.avtab_node* %156, %struct.avtab_node** %11, align 8
  %157 = load %struct.avtab_node*, %struct.avtab_node** %11, align 8
  %158 = icmp ne %struct.avtab_node* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %149
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  br label %163

162:                                              ; preds = %149
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %159, %83, %23
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @avtab_hash(%struct.avtab_key*, i32) #1

declare dso_local %struct.avtab_node* @avtab_insert_node(%struct.avtab*, i32, %struct.avtab_node*, %struct.avtab_node*, %struct.avtab_key*, %struct.avtab_datum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
