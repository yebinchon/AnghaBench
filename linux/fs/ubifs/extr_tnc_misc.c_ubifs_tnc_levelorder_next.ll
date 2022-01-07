; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_misc.c_ubifs_tnc_levelorder_next.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_misc.c_ubifs_tnc_levelorder_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_znode = type { i32, i32, i32, %struct.ubifs_znode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_znode* @ubifs_tnc_levelorder_next(%struct.ubifs_info* %0, %struct.ubifs_znode* %1, %struct.ubifs_znode* %2) #0 {
  %4 = alloca %struct.ubifs_znode*, align 8
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca %struct.ubifs_znode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %6, align 8
  store %struct.ubifs_znode* %2, %struct.ubifs_znode** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %13 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %14 = call i32 (%struct.ubifs_info*, ...) @ubifs_assert(%struct.ubifs_info* %12, %struct.ubifs_znode* %13)
  %15 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %16 = icmp ne %struct.ubifs_znode* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  store %struct.ubifs_znode* %22, %struct.ubifs_znode** %4, align 8
  br label %160

23:                                               ; preds = %3
  %24 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %25 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %26 = icmp eq %struct.ubifs_znode* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %32 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %4, align 8
  br label %160

36:                                               ; preds = %30
  %37 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %38 = call %struct.ubifs_znode* @ubifs_tnc_find_child(%struct.ubifs_znode* %37, i32 0)
  store %struct.ubifs_znode* %38, %struct.ubifs_znode** %4, align 8
  br label %160

39:                                               ; preds = %23
  %40 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %41 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %8, align 4
  %43 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %44 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %39, %123, %159
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %48 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %49 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %52 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sle i32 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 (%struct.ubifs_info*, ...) @ubifs_assert(%struct.ubifs_info* %47, i32 %55)
  br label %57

57:                                               ; preds = %73, %46
  %58 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %59 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %58, i32 0, i32 3
  %60 = load %struct.ubifs_znode*, %struct.ubifs_znode** %59, align 8
  %61 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %62 = icmp ne %struct.ubifs_znode* %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %66 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %65, i32 0, i32 3
  %67 = load %struct.ubifs_znode*, %struct.ubifs_znode** %66, align 8
  %68 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %64, %69
  br label %71

71:                                               ; preds = %63, %57
  %72 = phi i1 [ false, %57 ], [ %70, %63 ]
  br i1 %72, label %73, label %80

73:                                               ; preds = %71
  %74 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %75 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %74, i32 0, i32 3
  %76 = load %struct.ubifs_znode*, %struct.ubifs_znode** %75, align 8
  store %struct.ubifs_znode* %76, %struct.ubifs_znode** %7, align 8
  %77 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %78 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %9, align 4
  br label %57

80:                                               ; preds = %71
  %81 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %82 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %81, i32 0, i32 3
  %83 = load %struct.ubifs_znode*, %struct.ubifs_znode** %82, align 8
  %84 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %85 = icmp eq %struct.ubifs_znode* %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %89 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %88, i32 0, i32 3
  %90 = load %struct.ubifs_znode*, %struct.ubifs_znode** %89, align 8
  %91 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %87, %92
  br label %94

94:                                               ; preds = %86, %80
  %95 = phi i1 [ false, %80 ], [ %93, %86 ]
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load i32, i32* %8, align 4
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104, %99
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %4, align 8
  br label %160

108:                                              ; preds = %104
  store i32 1, i32* %10, align 4
  store i32 -1, i32* %9, align 4
  %109 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %110 = call %struct.ubifs_znode* @ubifs_tnc_find_child(%struct.ubifs_znode* %109, i32 0)
  store %struct.ubifs_znode* %110, %struct.ubifs_znode** %7, align 8
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %112 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %113 = call i32 (%struct.ubifs_info*, ...) @ubifs_assert(%struct.ubifs_info* %111, %struct.ubifs_znode* %112)
  br label %114

114:                                              ; preds = %108, %94
  %115 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %116 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %115, i32 0, i32 3
  %117 = load %struct.ubifs_znode*, %struct.ubifs_znode** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  %120 = call %struct.ubifs_znode* @ubifs_tnc_find_child(%struct.ubifs_znode* %117, i32 %119)
  store %struct.ubifs_znode* %120, %struct.ubifs_znode** %11, align 8
  %121 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %122 = icmp ne %struct.ubifs_znode* %121, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %114
  %124 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %125 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %124, i32 0, i32 3
  %126 = load %struct.ubifs_znode*, %struct.ubifs_znode** %125, align 8
  %127 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %9, align 4
  br label %46

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %146, %129
  %131 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %132 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %130
  %137 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  store %struct.ubifs_znode* %137, %struct.ubifs_znode** %7, align 8
  %138 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %139 = call %struct.ubifs_znode* @ubifs_tnc_find_child(%struct.ubifs_znode* %138, i32 0)
  store %struct.ubifs_znode* %139, %struct.ubifs_znode** %11, align 8
  %140 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %141 = icmp ne %struct.ubifs_znode* %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %136
  %143 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %144 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %9, align 4
  br label %147

146:                                              ; preds = %136
  br label %130

147:                                              ; preds = %142, %130
  %148 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %149 = icmp ne %struct.ubifs_znode* %148, null
  br i1 %149, label %150, label %159

150:                                              ; preds = %147
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %152 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %153 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp sge i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 (%struct.ubifs_info*, ...) @ubifs_assert(%struct.ubifs_info* %151, i32 %156)
  %158 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  store %struct.ubifs_znode* %158, %struct.ubifs_znode** %4, align 8
  br label %160

159:                                              ; preds = %147
  br label %46

160:                                              ; preds = %150, %107, %36, %35, %21
  %161 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  ret %struct.ubifs_znode* %161
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_znode* @ubifs_tnc_find_child(%struct.ubifs_znode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
