; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-utils.c_fsid_of_op.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-utils.c_fsid_of_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_kernel_op_s = type { %struct.TYPE_69__ }
%struct.TYPE_69__ = type { i32, %struct.TYPE_68__ }
%struct.TYPE_68__ = type { %struct.TYPE_67__, %struct.TYPE_65__, %struct.TYPE_63__, %struct.TYPE_61__, %struct.TYPE_58__, %struct.TYPE_56__, %struct.TYPE_55__, %struct.TYPE_53__, %struct.TYPE_51__, %struct.TYPE_50__, %struct.TYPE_47__, %struct.TYPE_45__, %struct.TYPE_43__, %struct.TYPE_41__, %struct.TYPE_39__, %struct.TYPE_75__, %struct.TYPE_73__, %struct.TYPE_71__, %struct.TYPE_60__ }
%struct.TYPE_67__ = type { %struct.TYPE_66__ }
%struct.TYPE_66__ = type { i32 }
%struct.TYPE_65__ = type { %struct.TYPE_64__ }
%struct.TYPE_64__ = type { i32 }
%struct.TYPE_63__ = type { %struct.TYPE_62__ }
%struct.TYPE_62__ = type { i32 }
%struct.TYPE_61__ = type { %struct.TYPE_59__ }
%struct.TYPE_59__ = type { i32 }
%struct.TYPE_58__ = type { %struct.TYPE_57__ }
%struct.TYPE_57__ = type { i32 }
%struct.TYPE_56__ = type { i32 }
%struct.TYPE_55__ = type { %struct.TYPE_54__ }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_53__ = type { %struct.TYPE_52__ }
%struct.TYPE_52__ = type { i32 }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_50__ = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { i32 }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_76__ }
%struct.TYPE_76__ = type { i32 }
%struct.TYPE_75__ = type { %struct.TYPE_74__ }
%struct.TYPE_74__ = type { i32 }
%struct.TYPE_73__ = type { %struct.TYPE_72__ }
%struct.TYPE_72__ = type { i32 }
%struct.TYPE_71__ = type { %struct.TYPE_70__ }
%struct.TYPE_70__ = type { i32 }
%struct.TYPE_60__ = type { %struct.TYPE_49__ }
%struct.TYPE_49__ = type { i32 }

@ORANGEFS_FS_ID_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsid_of_op(%struct.orangefs_kernel_op_s* %0) #0 {
  %2 = alloca %struct.orangefs_kernel_op_s*, align 8
  %3 = alloca i32, align 4
  store %struct.orangefs_kernel_op_s* %0, %struct.orangefs_kernel_op_s** %2, align 8
  %4 = load i32, i32* @ORANGEFS_FS_ID_NULL, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %6 = icmp ne %struct.orangefs_kernel_op_s* %5, null
  br i1 %6, label %7, label %164

7:                                                ; preds = %1
  %8 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %9 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %162 [
    i32 145, label %12
    i32 139, label %20
    i32 146, label %28
    i32 142, label %36
    i32 135, label %44
    i32 138, label %52
    i32 136, label %60
    i32 132, label %68
    i32 129, label %76
    i32 133, label %84
    i32 130, label %92
    i32 128, label %99
    i32 137, label %107
    i32 143, label %115
    i32 141, label %122
    i32 131, label %130
    i32 140, label %138
    i32 134, label %146
    i32 144, label %154
  ]

12:                                               ; preds = %7
  %13 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %14 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %15, i32 0, i32 18
  %17 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %163

20:                                               ; preds = %7
  %21 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %22 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %23, i32 0, i32 17
  %25 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %163

28:                                               ; preds = %7
  %29 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %30 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %31, i32 0, i32 16
  %33 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %163

36:                                               ; preds = %7
  %37 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %38 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %39, i32 0, i32 15
  %41 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %163

44:                                               ; preds = %7
  %45 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %46 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %47, i32 0, i32 14
  %49 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %163

52:                                               ; preds = %7
  %53 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %54 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %55, i32 0, i32 13
  %57 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %3, align 4
  br label %163

60:                                               ; preds = %7
  %61 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %62 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %63, i32 0, i32 12
  %65 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %3, align 4
  br label %163

68:                                               ; preds = %7
  %69 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %70 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %71, i32 0, i32 11
  %73 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %3, align 4
  br label %163

76:                                               ; preds = %7
  %77 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %78 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %79, i32 0, i32 10
  %81 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %3, align 4
  br label %163

84:                                               ; preds = %7
  %85 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %86 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %87, i32 0, i32 9
  %89 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %3, align 4
  br label %163

92:                                               ; preds = %7
  %93 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %94 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %3, align 4
  br label %163

99:                                               ; preds = %7
  %100 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %101 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %3, align 4
  br label %163

107:                                              ; preds = %7
  %108 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %109 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %3, align 4
  br label %163

115:                                              ; preds = %7
  %116 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %117 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %3, align 4
  br label %163

122:                                              ; preds = %7
  %123 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %124 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %3, align 4
  br label %163

130:                                              ; preds = %7
  %131 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %132 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %3, align 4
  br label %163

138:                                              ; preds = %7
  %139 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %140 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %3, align 4
  br label %163

146:                                              ; preds = %7
  %147 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %148 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %3, align 4
  br label %163

154:                                              ; preds = %7
  %155 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %156 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %3, align 4
  br label %163

162:                                              ; preds = %7
  br label %163

163:                                              ; preds = %162, %154, %146, %138, %130, %122, %115, %107, %99, %92, %84, %76, %68, %60, %52, %44, %36, %28, %20, %12
  br label %164

164:                                              ; preds = %163, %1
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
