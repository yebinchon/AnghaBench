; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_tree_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_block_layout = type { i32, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { i32 }
%struct.pnfs_block_extent = type { i32, i64, i8*, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"invalid extent type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext_tree_insert(%struct.pnfs_block_layout* %0, %struct.pnfs_block_extent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnfs_block_layout*, align 8
  %5 = alloca %struct.pnfs_block_extent*, align 8
  %6 = alloca %struct.pnfs_block_extent*, align 8
  %7 = alloca %struct.rb_root*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.pnfs_block_extent*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.pnfs_block_layout* %0, %struct.pnfs_block_layout** %4, align 8
  store %struct.pnfs_block_extent* %1, %struct.pnfs_block_extent** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %15 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %23 [
    i32 129, label %17
    i32 131, label %17
    i32 128, label %20
    i32 130, label %20
  ]

17:                                               ; preds = %2, %2
  %18 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %4, align 8
  %19 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %18, i32 0, i32 2
  store %struct.rb_root* %19, %struct.rb_root** %7, align 8
  br label %27

20:                                               ; preds = %2, %2
  %21 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %4, align 8
  %22 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %21, i32 0, i32 1
  store %struct.rb_root* %22, %struct.rb_root** %7, align 8
  br label %27

23:                                               ; preds = %2
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %190

27:                                               ; preds = %20, %17
  %28 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %4, align 8
  %29 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  br label %31

31:                                               ; preds = %146, %71, %27
  %32 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %33 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %34 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.pnfs_block_extent* @__ext_tree_search(%struct.rb_root* %32, i64 %35)
  store %struct.pnfs_block_extent* %36, %struct.pnfs_block_extent** %6, align 8
  %37 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %38 = icmp ne %struct.pnfs_block_extent* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %41 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %44 = call i64 @ext_f_end(%struct.pnfs_block_extent* %43)
  %45 = icmp sge i64 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39, %31
  %47 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %48 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %49 = call i32 @__ext_tree_insert(%struct.rb_root* %47, %struct.pnfs_block_extent* %48, i32 1)
  br label %184

50:                                               ; preds = %39
  %51 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %52 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %55 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %103

58:                                               ; preds = %50
  %59 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %60 = call i64 @ext_f_end(%struct.pnfs_block_extent* %59)
  %61 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %62 = call i64 @ext_f_end(%struct.pnfs_block_extent* %61)
  %63 = icmp sle i64 %60, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %66 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @nfs4_put_deviceid_node(i32 %67)
  %69 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %70 = call i32 @kfree(%struct.pnfs_block_extent* %69)
  br label %102

71:                                               ; preds = %58
  %72 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %73 = call i64 @ext_f_end(%struct.pnfs_block_extent* %72)
  %74 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %75 = call i64 @ext_f_end(%struct.pnfs_block_extent* %74)
  %76 = sub nsw i64 %73, %75
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %9, align 8
  %78 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %79 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %10, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %88 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr i8, i8* %86, i64 %89
  %91 = ptrtoint i8* %90 to i64
  store i64 %91, i64* %88, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %94 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %92, i64 %96
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %94, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %101 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  br label %31

102:                                              ; preds = %64
  br label %183

103:                                              ; preds = %50
  %104 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %105 = call i64 @ext_f_end(%struct.pnfs_block_extent* %104)
  %106 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %107 = call i64 @ext_f_end(%struct.pnfs_block_extent* %106)
  %108 = icmp sle i64 %105, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %103
  %110 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %111 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %114 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %119 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %121 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %122 = call i32 @__ext_tree_insert(%struct.rb_root* %120, %struct.pnfs_block_extent* %121, i32 1)
  br label %182

123:                                              ; preds = %103
  %124 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %125 = call i64 @ext_f_end(%struct.pnfs_block_extent* %124)
  %126 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %127 = call i64 @ext_f_end(%struct.pnfs_block_extent* %126)
  %128 = sub nsw i64 %125, %127
  %129 = inttoptr i64 %128 to i8*
  store i8* %129, i8** %12, align 8
  %130 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %131 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = inttoptr i64 %136 to i8*
  store i8* %137, i8** %13, align 8
  %138 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %139 = load i32, i32* @GFP_ATOMIC, align 4
  %140 = call %struct.pnfs_block_extent* @kmemdup(%struct.pnfs_block_extent* %138, i32 32, i32 %139)
  store %struct.pnfs_block_extent* %140, %struct.pnfs_block_extent** %11, align 8
  %141 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %142 = icmp ne %struct.pnfs_block_extent* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %123
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %8, align 4
  br label %185

146:                                              ; preds = %123
  %147 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %148 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %151 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %149, %152
  %154 = inttoptr i64 %153 to i8*
  %155 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %156 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  %157 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %158 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @nfs4_get_deviceid(i32 %159)
  %161 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %162 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  %163 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %164 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %165 = call i32 @__ext_tree_insert(%struct.rb_root* %163, %struct.pnfs_block_extent* %164, i32 1)
  %166 = load i8*, i8** %13, align 8
  %167 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %168 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr i8, i8* %166, i64 %169
  %171 = ptrtoint i8* %170 to i64
  store i64 %171, i64* %168, align 8
  %172 = load i8*, i8** %13, align 8
  %173 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %174 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr i8, i8* %172, i64 %176
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* %174, align 8
  %179 = load i8*, i8** %12, align 8
  %180 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %181 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %180, i32 0, i32 2
  store i8* %179, i8** %181, align 8
  br label %31

182:                                              ; preds = %109
  br label %183

183:                                              ; preds = %182, %102
  br label %184

184:                                              ; preds = %183, %46
  br label %185

185:                                              ; preds = %184, %143
  %186 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %4, align 8
  %187 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %186, i32 0, i32 0
  %188 = call i32 @spin_unlock(i32* %187)
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %185, %23
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.pnfs_block_extent* @__ext_tree_search(%struct.rb_root*, i64) #1

declare dso_local i64 @ext_f_end(%struct.pnfs_block_extent*) #1

declare dso_local i32 @__ext_tree_insert(%struct.rb_root*, %struct.pnfs_block_extent*, i32) #1

declare dso_local i32 @nfs4_put_deviceid_node(i32) #1

declare dso_local i32 @kfree(%struct.pnfs_block_extent*) #1

declare dso_local %struct.pnfs_block_extent* @kmemdup(%struct.pnfs_block_extent*, i32, i32) #1

declare dso_local i32 @nfs4_get_deviceid(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
