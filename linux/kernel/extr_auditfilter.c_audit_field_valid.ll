; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_field_valid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_field_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.audit_field = type { i32, i32, i32 }

@AUDIT_FILTER_EXCLUDE = common dso_local global i32 0, align 4
@AUDIT_FILTER_USER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Audit_bitmask = common dso_local global i32 0, align 4
@Audit_bittest = common dso_local global i32 0, align 4
@Audit_not_equal = common dso_local global i32 0, align 4
@Audit_equal = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@AUDIT_MAX_FIELD_COMPARE = common dso_local global i32 0, align 4
@AF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_entry*, %struct.audit_field*)* @audit_field_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_field_valid(%struct.audit_entry* %0, %struct.audit_field* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_entry*, align 8
  %5 = alloca %struct.audit_field*, align 8
  store %struct.audit_entry* %0, %struct.audit_entry** %4, align 8
  store %struct.audit_field* %1, %struct.audit_field** %5, align 8
  %6 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %7 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %37 [
    i32 151, label %9
    i32 157, label %27
  ]

9:                                                ; preds = %2
  %10 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %11 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AUDIT_FILTER_EXCLUDE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %18 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AUDIT_FILTER_USER, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %153

26:                                               ; preds = %16, %9
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %29 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 159
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %153

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %2, %36, %26
  %38 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %39 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %51 [
    i32 159, label %42
  ]

42:                                               ; preds = %37
  %43 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %44 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %47 [
    i32 157, label %46
    i32 160, label %46
  ]

46:                                               ; preds = %42, %42
  br label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %153

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %53 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %88 [
    i32 173, label %55
    i32 172, label %55
    i32 171, label %55
    i32 170, label %55
    i32 142, label %55
    i32 168, label %55
    i32 129, label %56
    i32 165, label %56
    i32 130, label %56
    i32 156, label %56
    i32 153, label %56
    i32 145, label %56
    i32 155, label %56
    i32 166, label %56
    i32 137, label %56
    i32 158, label %56
    i32 150, label %56
    i32 141, label %56
    i32 151, label %56
    i32 140, label %56
    i32 169, label %56
    i32 163, label %56
    i32 131, label %56
    i32 154, label %56
    i32 138, label %56
    i32 134, label %56
    i32 136, label %56
    i32 148, label %56
    i32 149, label %56
    i32 139, label %56
    i32 132, label %72
    i32 135, label %72
    i32 133, label %72
    i32 144, label %72
    i32 147, label %72
    i32 146, label %72
    i32 128, label %72
    i32 167, label %72
    i32 160, label %72
    i32 152, label %72
    i32 174, label %72
    i32 157, label %72
    i32 143, label %72
    i32 161, label %72
    i32 162, label %72
    i32 164, label %72
  ]

55:                                               ; preds = %51, %51, %51, %51, %51, %51
  br label %91

56:                                               ; preds = %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51
  %57 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %58 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @Audit_bitmask, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %64 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @Audit_bittest, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %56
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %153

71:                                               ; preds = %62
  br label %91

72:                                               ; preds = %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51
  %73 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %74 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @Audit_not_equal, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %80 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @Audit_equal, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %153

87:                                               ; preds = %78, %72
  br label %91

88:                                               ; preds = %51
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %153

91:                                               ; preds = %87, %71, %55
  %92 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %93 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %151 [
    i32 152, label %95
    i32 143, label %109
    i32 161, label %119
    i32 162, label %131
    i32 139, label %141
  ]

95:                                               ; preds = %91
  %96 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %97 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %102 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %153

108:                                              ; preds = %100, %95
  br label %152

109:                                              ; preds = %91
  %110 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %111 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, -16
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %153

118:                                              ; preds = %109
  br label %152

119:                                              ; preds = %91
  %120 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %121 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @S_IFMT, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %153

130:                                              ; preds = %119
  br label %152

131:                                              ; preds = %91
  %132 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %133 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AUDIT_MAX_FIELD_COMPARE, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %153

140:                                              ; preds = %131
  br label %152

141:                                              ; preds = %91
  %142 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %143 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AF_MAX, align 4
  %146 = icmp sge i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %153

150:                                              ; preds = %141
  br label %152

151:                                              ; preds = %91
  br label %152

152:                                              ; preds = %151, %150, %140, %130, %118, %108
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %147, %137, %127, %115, %105, %88, %84, %68, %47, %33, %23
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
