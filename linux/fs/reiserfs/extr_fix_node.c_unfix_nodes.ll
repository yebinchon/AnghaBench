; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_unfix_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_unfix_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, %struct.TYPE_3__**, i32, %struct.TYPE_3__**, %struct.TYPE_3__**, %struct.TYPE_3__**, %struct.TYPE_3__**, %struct.TYPE_3__**, %struct.TYPE_3__**, %struct.TYPE_3__**, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MAX_HEIGHT = common dso_local global i32 0, align 4
@MAX_FEB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unfix_nodes(%struct.tree_balance* %0) #0 {
  %2 = alloca %struct.tree_balance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %2, align 8
  %5 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %6 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %9 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pathrelse_and_restore(i32 %7, i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %131, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MAX_HEIGHT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %134

16:                                               ; preds = %12
  %17 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %18 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %21 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %20, i32 0, i32 9
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i32 @reiserfs_restore_prepared_buffer(i32 %19, %struct.TYPE_3__* %26)
  %28 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %29 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %32 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %31, i32 0, i32 8
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call i32 @reiserfs_restore_prepared_buffer(i32 %30, %struct.TYPE_3__* %37)
  %39 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %40 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %43 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %42, i32 0, i32 7
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %44, i64 %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = call i32 @reiserfs_restore_prepared_buffer(i32 %41, %struct.TYPE_3__* %48)
  %50 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %51 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %54 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %53, i32 0, i32 6
  %55 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %55, i64 %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = call i32 @reiserfs_restore_prepared_buffer(i32 %52, %struct.TYPE_3__* %59)
  %61 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %62 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %65 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %64, i32 0, i32 5
  %66 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %66, i64 %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = call i32 @reiserfs_restore_prepared_buffer(i32 %63, %struct.TYPE_3__* %70)
  %72 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %73 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %76 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %75, i32 0, i32 4
  %77 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %77, i64 %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = call i32 @reiserfs_restore_prepared_buffer(i32 %74, %struct.TYPE_3__* %81)
  %83 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %84 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %83, i32 0, i32 9
  %85 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %85, i64 %87
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = call i32 @brelse(%struct.TYPE_3__* %89)
  %91 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %92 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %91, i32 0, i32 8
  %93 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %93, i64 %95
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = call i32 @brelse(%struct.TYPE_3__* %97)
  %99 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %100 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %99, i32 0, i32 7
  %101 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %101, i64 %103
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = call i32 @brelse(%struct.TYPE_3__* %105)
  %107 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %108 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %107, i32 0, i32 6
  %109 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %109, i64 %111
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = call i32 @brelse(%struct.TYPE_3__* %113)
  %115 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %116 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %115, i32 0, i32 5
  %117 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %117, i64 %119
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = call i32 @brelse(%struct.TYPE_3__* %121)
  %123 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %124 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %123, i32 0, i32 4
  %125 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %125, i64 %127
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = call i32 @brelse(%struct.TYPE_3__* %129)
  br label %131

131:                                              ; preds = %16
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %3, align 4
  br label %12

134:                                              ; preds = %12
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %190, %134
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @MAX_FEB_SIZE, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %193

139:                                              ; preds = %135
  %140 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %141 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %140, i32 0, i32 3
  %142 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %141, align 8
  %143 = load i32, i32* %3, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %142, i64 %144
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = icmp ne %struct.TYPE_3__* %146, null
  br i1 %147, label %148, label %171

148:                                              ; preds = %139
  %149 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %150 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %149, i32 0, i32 3
  %151 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %151, i64 %153
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %4, align 4
  %158 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %159 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %158, i32 0, i32 3
  %160 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %159, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %160, i64 %162
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = call i32 @brelse(%struct.TYPE_3__* %164)
  %166 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %167 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @reiserfs_free_block(i32 %168, i32* null, i32 %169, i32 0)
  br label %171

171:                                              ; preds = %148, %139
  %172 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %173 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %172, i32 0, i32 1
  %174 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %173, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %174, i64 %176
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = icmp ne %struct.TYPE_3__* %178, null
  br i1 %179, label %180, label %189

180:                                              ; preds = %171
  %181 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %182 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %181, i32 0, i32 1
  %183 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %182, align 8
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %183, i64 %185
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = call i32 @brelse(%struct.TYPE_3__* %187)
  br label %189

189:                                              ; preds = %180, %171
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %3, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %3, align 4
  br label %135

193:                                              ; preds = %135
  %194 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %195 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @kfree(i32 %196)
  ret void
}

declare dso_local i32 @pathrelse_and_restore(i32, i32) #1

declare dso_local i32 @reiserfs_restore_prepared_buffer(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @brelse(%struct.TYPE_3__*) #1

declare dso_local i32 @reiserfs_free_block(i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
