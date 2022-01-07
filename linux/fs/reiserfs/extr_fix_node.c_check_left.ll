; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_check_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_check_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32, i32, %struct.virtual_node* }
%struct.virtual_node = type { i32, i32, i64, %struct.virtual_item* }
%struct.virtual_item = type { i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"vs-8050: cur_free (%d) < 0\00", align 1
@DC_SIZE = common dso_local global i32 0, align 4
@KEY_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"vs-8055: parent does not exist or invalid\00", align 1
@VI_TYPE_LEFT_MERGEABLE = common dso_local global i32 0, align 4
@IH_SIZE = common dso_local global i32 0, align 4
@M_INSERT = common dso_local global i64 0, align 8
@M_PASTE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"vs-8055: invalid mode or balance condition failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, i32, i32)* @check_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_left(%struct.tree_balance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtual_node*, align 8
  %9 = alloca %struct.virtual_item*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %13 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %12, i32 0, i32 3
  %14 = load %struct.virtual_node*, %struct.virtual_node** %13, align 8
  store %struct.virtual_node* %14, %struct.virtual_node** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i32, i8*, ...) @RFALSE(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DC_SIZE, align 4
  %25 = load i32, i32* @KEY_SIZE, align 4
  %26 = add nsw i32 %24, %25
  %27 = sdiv i32 %23, %26
  %28 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %29 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  br label %183

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %39 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %44 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 0, i32* %48, align 4
  %49 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %50 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 8
  br label %183

51:                                               ; preds = %37
  %52 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %53 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PATH_H_PPARENT(i32 %54, i32 0)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @RFALSE(i32 %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %61 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %60, i32 0, i32 3
  %62 = load %struct.virtual_item*, %struct.virtual_item** %61, align 8
  store %struct.virtual_item* %62, %struct.virtual_item** %9, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %65 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.virtual_item*, %struct.virtual_item** %9, align 8
  %68 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @VI_TYPE_LEFT_MERGEABLE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %51
  %74 = load i32, i32* @IH_SIZE, align 4
  br label %76

75:                                               ; preds = %51
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = sub i32 %66, %77
  %79 = icmp uge i32 %63, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %76
  %81 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %82 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @M_INSERT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %88 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @M_PASTE, align 8
  %91 = icmp eq i64 %89, %90
  br label %92

92:                                               ; preds = %86, %80
  %93 = phi i1 [ true, %80 ], [ %91, %86 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 (i32, i8*, ...) @RFALSE(i32 %94, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %97 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %100 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %98, i32* %102, align 4
  %103 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %104 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %103, i32 0, i32 1
  store i32 -1, i32* %104, align 8
  br label %183

105:                                              ; preds = %76
  store i32 0, i32* %10, align 4
  %106 = load i32, i32* @IH_SIZE, align 4
  store i32 %106, i32* %11, align 4
  %107 = load %struct.virtual_item*, %struct.virtual_item** %9, align 8
  %108 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @VI_TYPE_LEFT_MERGEABLE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32, i32* @IH_SIZE, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %113, %105
  %117 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %118 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 0, i32* %120, align 4
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %176, %116
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %124 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %182

127:                                              ; preds = %121
  %128 = load %struct.virtual_item*, %struct.virtual_item** %9, align 8
  %129 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %127
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %6, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %143 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  br label %176

148:                                              ; preds = %127
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %154 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %153, i32 0, i32 1
  store i32 -1, i32* %154, align 8
  br label %183

155:                                              ; preds = %148
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %6, align 4
  %158 = sub nsw i32 %157, %156
  store i32 %158, i32* %6, align 4
  %159 = load %struct.virtual_item*, %struct.virtual_item** %9, align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @op_check_left(%struct.virtual_item* %159, i32 %160, i32 0, i32 0)
  %162 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %163 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  %164 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %165 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, -1
  br i1 %167, label %168, label %175

168:                                              ; preds = %155
  %169 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %170 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %168, %155
  br label %182

176:                                              ; preds = %138
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* @IH_SIZE, align 4
  store i32 %179, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %180 = load %struct.virtual_item*, %struct.virtual_item** %9, align 8
  %181 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %180, i32 1
  store %struct.virtual_item* %181, %struct.virtual_item** %9, align 8
  br label %121

182:                                              ; preds = %175, %121
  br label %183

183:                                              ; preds = %182, %152, %92, %42, %22
  ret void
}

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @PATH_H_PPARENT(i32, i32) #1

declare dso_local i32 @op_check_left(%struct.virtual_item*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
