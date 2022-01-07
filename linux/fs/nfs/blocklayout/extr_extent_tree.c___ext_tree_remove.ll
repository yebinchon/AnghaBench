; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c___ext_tree_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c___ext_tree_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.list_head = type { i32 }
%struct.pnfs_block_extent = type { i64, i64, i64, i64, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PNFS_BLOCK_NONE_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rb_root*, i64, i64, %struct.list_head*)* @__ext_tree_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext_tree_remove(%struct.rb_root* %0, i64 %1, i64 %2, %struct.list_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rb_root*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.pnfs_block_extent*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.pnfs_block_extent*, align 8
  %16 = alloca %struct.pnfs_block_extent*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.pnfs_block_extent* @__ext_tree_search(%struct.rb_root* %17, i64 %18)
  store %struct.pnfs_block_extent* %19, %struct.pnfs_block_extent** %10, align 8
  %20 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %21 = icmp ne %struct.pnfs_block_extent* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %207

23:                                               ; preds = %4
  %24 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %25 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %207

30:                                               ; preds = %23
  %31 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %32 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %13, align 8
  %34 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %35 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %39 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %45 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %42, %30
  %49 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %50 = call i64 @ext_f_end(%struct.pnfs_block_extent* %49)
  %51 = load i64, i64* %8, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %55 = call i64 @ext_f_end(%struct.pnfs_block_extent* %54)
  %56 = load i64, i64* %8, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i64, i64* %12, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %137

61:                                               ; preds = %58
  %62 = load i64, i64* %11, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %115

64:                                               ; preds = %61
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call %struct.pnfs_block_extent* @kzalloc(i32 48, i32 %65)
  store %struct.pnfs_block_extent* %66, %struct.pnfs_block_extent** %15, align 8
  %67 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %15, align 8
  %68 = icmp ne %struct.pnfs_block_extent* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %207

72:                                               ; preds = %64
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %75 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %15, align 8
  %78 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %80 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PNFS_BLOCK_NONE_DATA, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %72
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %14, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i64, i64* %12, align 8
  %89 = sub nsw i64 %87, %88
  %90 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %15, align 8
  %91 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %84, %72
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %15, align 8
  %95 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  %96 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %97 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %15, align 8
  %100 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %99, i32 0, i32 3
  store i64 %98, i64* %100, align 8
  %101 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %102 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %15, align 8
  %105 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 4
  %106 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %107 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @nfs4_get_deviceid(i32 %108)
  %110 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %15, align 8
  %111 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  %112 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %113 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %15, align 8
  %114 = call i32 @__ext_tree_insert(%struct.rb_root* %112, %struct.pnfs_block_extent* %113, i32 1)
  br label %136

115:                                              ; preds = %61
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %118 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %120 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PNFS_BLOCK_NONE_DATA, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %115
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* %14, align 8
  %127 = add nsw i64 %125, %126
  %128 = load i64, i64* %12, align 8
  %129 = sub nsw i64 %127, %128
  %130 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %131 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %124, %115
  %133 = load i64, i64* %12, align 8
  %134 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %135 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %132, %92
  br label %206

137:                                              ; preds = %58
  %138 = load i64, i64* %11, align 8
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load i64, i64* %11, align 8
  %142 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %143 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %145 = call %struct.pnfs_block_extent* @ext_tree_next(%struct.pnfs_block_extent* %144)
  store %struct.pnfs_block_extent* %145, %struct.pnfs_block_extent** %10, align 8
  br label %146

146:                                              ; preds = %140, %137
  br label %147

147:                                              ; preds = %157, %146
  %148 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %149 = icmp ne %struct.pnfs_block_extent* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %152 = call i64 @ext_f_end(%struct.pnfs_block_extent* %151)
  %153 = load i64, i64* %8, align 8
  %154 = icmp sle i64 %152, %153
  br label %155

155:                                              ; preds = %150, %147
  %156 = phi i1 [ false, %147 ], [ %154, %150 ]
  br i1 %156, label %157, label %169

157:                                              ; preds = %155
  %158 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %159 = call %struct.pnfs_block_extent* @ext_tree_next(%struct.pnfs_block_extent* %158)
  store %struct.pnfs_block_extent* %159, %struct.pnfs_block_extent** %16, align 8
  %160 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %161 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %160, i32 0, i32 5
  %162 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %163 = call i32 @rb_erase(i32* %161, %struct.rb_root* %162)
  %164 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %165 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %164, i32 0, i32 4
  %166 = load %struct.list_head*, %struct.list_head** %9, align 8
  %167 = call i32 @list_add_tail(i32* %165, %struct.list_head* %166)
  %168 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %16, align 8
  store %struct.pnfs_block_extent* %168, %struct.pnfs_block_extent** %10, align 8
  br label %147

169:                                              ; preds = %155
  %170 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %171 = icmp ne %struct.pnfs_block_extent* %170, null
  br i1 %171, label %172, label %205

172:                                              ; preds = %169
  %173 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %174 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %8, align 8
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %178, label %205

178:                                              ; preds = %172
  %179 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %180 = call i64 @ext_f_end(%struct.pnfs_block_extent* %179)
  %181 = load i64, i64* %8, align 8
  %182 = sub nsw i64 %180, %181
  store i64 %182, i64* %11, align 8
  %183 = load i64, i64* %8, align 8
  %184 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %185 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  %186 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %187 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @PNFS_BLOCK_NONE_DATA, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %178
  %192 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %193 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %11, align 8
  %196 = sub nsw i64 %194, %195
  %197 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %198 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, %196
  store i64 %200, i64* %198, align 8
  br label %201

201:                                              ; preds = %191, %178
  %202 = load i64, i64* %11, align 8
  %203 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  %204 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %203, i32 0, i32 2
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %201, %172, %169
  br label %206

206:                                              ; preds = %205, %136
  store i32 0, i32* %5, align 4
  br label %207

207:                                              ; preds = %206, %69, %29, %22
  %208 = load i32, i32* %5, align 4
  ret i32 %208
}

declare dso_local %struct.pnfs_block_extent* @__ext_tree_search(%struct.rb_root*, i64) #1

declare dso_local i64 @ext_f_end(%struct.pnfs_block_extent*) #1

declare dso_local %struct.pnfs_block_extent* @kzalloc(i32, i32) #1

declare dso_local i32 @nfs4_get_deviceid(i32) #1

declare dso_local i32 @__ext_tree_insert(%struct.rb_root*, %struct.pnfs_block_extent*, i32) #1

declare dso_local %struct.pnfs_block_extent* @ext_tree_next(%struct.pnfs_block_extent*) #1

declare dso_local i32 @rb_erase(i32*, %struct.rb_root*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
