; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_dc_check_balance_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_dc_check_balance_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32*, i32, i32*, i32, i32, i32*, i32*, i32, %struct.virtual_node* }
%struct.virtual_node = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"vs-8240: attempt to create empty buffer tree\00", align 1
@NO_BALANCING_NEEDED = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"vs-8245: dc_check_balance_leaf: FL[h] must exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, i32)* @dc_check_balance_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_check_balance_leaf(%struct.tree_balance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtual_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %15 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %14, i32 0, i32 9
  %16 = load %struct.virtual_node*, %struct.virtual_node** %15, align 8
  store %struct.virtual_node* %16, %struct.virtual_node** %6, align 8
  %17 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %18 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.buffer_head* @PATH_H_PBUFFER(i32 %19, i32 0)
  store %struct.buffer_head* %20, %struct.buffer_head** %10, align 8
  %21 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %22 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.buffer_head* @PATH_H_PPARENT(i32 %23, i32 0)
  store %struct.buffer_head* %24, %struct.buffer_head** %11, align 8
  %25 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %26 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %33 = call i32 @MAX_CHILD_SIZE(%struct.buffer_head* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %35 = icmp ne %struct.buffer_head* %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 0, %37
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %41 = call i32 @B_FREE_SPACE(%struct.buffer_head* %40)
  %42 = sub nsw i32 %39, %41
  %43 = icmp sge i32 %38, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @RFALSE(i32 %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @set_parameters(%struct.tree_balance* %46, i32 %47, i32 0, i32 0, i32 1, i32* null, i32 -1, i32 -1)
  %49 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  store i32 %49, i32* %3, align 4
  br label %182

50:                                               ; preds = %2
  %51 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @get_parents(%struct.tree_balance* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @CARRY_ON, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %182

58:                                               ; preds = %50
  %59 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @get_rfree(%struct.tree_balance* %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @get_lfree(%struct.tree_balance* %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @create_virtual_node(%struct.tree_balance* %65, i32 %66)
  %68 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i64 @are_leaves_removable(%struct.tree_balance* %68, i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i32, i32* @CARRY_ON, align 4
  store i32 %74, i32* %3, align 4
  br label %182

75:                                               ; preds = %58
  %76 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @check_left(%struct.tree_balance* %76, i32 %77, i32 %78)
  %80 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @check_right(%struct.tree_balance* %80, i32 %81, i32 %82)
  %84 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %85 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %90 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %88, %91
  br i1 %92, label %93, label %146

93:                                               ; preds = %75
  %94 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %95 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %146

98:                                               ; preds = %93
  %99 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i64 @is_left_neighbor_in_cache(%struct.tree_balance* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %129, label %103

103:                                              ; preds = %98
  %104 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %105 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %110 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, -1
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 0, i32 1
  %115 = sub nsw i32 %108, %114
  %116 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %117 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %129, label %120

120:                                              ; preds = %103
  %121 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %122 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %121, i32 0, i32 7
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %120, %103, %98
  %130 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %131 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %130, i32 0, i32 6
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i32 @RFALSE(i32 %139, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @set_parameters(%struct.tree_balance* %141, i32 %142, i32 -1, i32 0, i32 0, i32* null, i32 -1, i32 -1)
  %144 = load i32, i32* @CARRY_ON, align 4
  store i32 %144, i32* %3, align 4
  br label %182

145:                                              ; preds = %120
  br label %146

146:                                              ; preds = %145, %93, %75
  %147 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %148 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %153 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp sge i32 %151, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %146
  %157 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %158 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @set_parameters(%struct.tree_balance* %162, i32 %163, i32 0, i32 -1, i32 0, i32* null, i32 -1, i32 -1)
  %165 = load i32, i32* @CARRY_ON, align 4
  store i32 %165, i32* %3, align 4
  br label %182

166:                                              ; preds = %156, %146
  %167 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %168 = call i64 @is_leaf_removable(%struct.tree_balance* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i32, i32* @CARRY_ON, align 4
  store i32 %171, i32* %3, align 4
  br label %182

172:                                              ; preds = %166
  %173 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %174 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %177 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  %178 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @set_parameters(%struct.tree_balance* %178, i32 %179, i32 0, i32 0, i32 1, i32* null, i32 -1, i32 -1)
  %181 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %172, %170, %161, %129, %73, %56, %36
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local %struct.buffer_head* @PATH_H_PBUFFER(i32, i32) #1

declare dso_local %struct.buffer_head* @PATH_H_PPARENT(i32, i32) #1

declare dso_local i32 @MAX_CHILD_SIZE(%struct.buffer_head*) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @B_FREE_SPACE(%struct.buffer_head*) #1

declare dso_local i32 @set_parameters(%struct.tree_balance*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @get_parents(%struct.tree_balance*, i32) #1

declare dso_local i32 @get_rfree(%struct.tree_balance*, i32) #1

declare dso_local i32 @get_lfree(%struct.tree_balance*, i32) #1

declare dso_local i32 @create_virtual_node(%struct.tree_balance*, i32) #1

declare dso_local i64 @are_leaves_removable(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @check_left(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @check_right(%struct.tree_balance*, i32, i32) #1

declare dso_local i64 @is_left_neighbor_in_cache(%struct.tree_balance*, i32) #1

declare dso_local i64 @is_leaf_removable(%struct.tree_balance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
