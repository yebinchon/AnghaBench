; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_hpfs_count_dnodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_hpfs_count_dnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dnode = type { i64, i32 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i64, i32, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"hpfs_count_dnodes #1\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"hpfs_count_dnodes: bad up pointer; dnode %08x, down %08x points to %08x\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"hpfs_count_dnodes: pointer to dnode %08x not found in dnode %08x, got here from %08x\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"hpfs_count_dnodes #2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_count_dnodes(%struct.super_block* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dnode*, align 8
  %12 = alloca %struct.quad_buffer_head, align 4
  %13 = alloca %struct.hpfs_dirent*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %115, %5
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @hpfs_stop_cycles(%struct.super_block* %34, i32 %35, i32* %16, i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %194

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %27
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %193, %40
  %42 = load %struct.super_block*, %struct.super_block** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.dnode* @hpfs_map_dnode(%struct.super_block* %42, i32 %43, %struct.quad_buffer_head* %12)
  store %struct.dnode* %44, %struct.dnode** %11, align 8
  %45 = icmp ne %struct.dnode* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %194

47:                                               ; preds = %41
  %48 = load %struct.super_block*, %struct.super_block** %6, align 8
  %49 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %47
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load %struct.dnode*, %struct.dnode** %11, align 8
  %61 = getelementptr inbounds %struct.dnode, %struct.dnode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.super_block*, %struct.super_block** %6, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.dnode*, %struct.dnode** %11, align 8
  %71 = getelementptr inbounds %struct.dnode, %struct.dnode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = call i32 @hpfs_error(%struct.super_block* %67, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %66, %59, %56, %53
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %struct.dnode*, %struct.dnode** %11, align 8
  %78 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %77)
  store %struct.hpfs_dirent* %78, %struct.hpfs_dirent** %13, align 8
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %106
  %83 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %84 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %89 = call i32 @de_down_pointer(%struct.hpfs_dirent* %88)
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %121

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %82
  %95 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %96 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  %101 = load %struct.super_block*, %struct.super_block** %6, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @hpfs_error(%struct.super_block* %101, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %103, i32 %104)
  br label %194

106:                                              ; preds = %94
  %107 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %108 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %107)
  store %struct.hpfs_dirent* %108, %struct.hpfs_dirent** %13, align 8
  br label %82

109:                                              ; preds = %76
  br label %110

110:                                              ; preds = %166, %109
  %111 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %112 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %15, align 4
  %117 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %118 = call i32 @de_down_pointer(%struct.hpfs_dirent* %117)
  store i32 %118, i32* %7, align 4
  %119 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  br label %20

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %92
  %122 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %123 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %121
  %127 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %128 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %126
  %132 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %133 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load i32*, i32** %9, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %139, %136, %131, %126, %121
  %144 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %145 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %143
  %149 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %150 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %148
  %154 = load i32*, i32** %10, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %156, %153, %148, %143
  %161 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %162 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %161)
  store %struct.hpfs_dirent* %162, %struct.hpfs_dirent** %13, align 8
  %163 = load %struct.dnode*, %struct.dnode** %11, align 8
  %164 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %163)
  %165 = icmp ult %struct.hpfs_dirent* %162, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %110

167:                                              ; preds = %160
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %14, align 4
  %169 = load %struct.dnode*, %struct.dnode** %11, align 8
  %170 = getelementptr inbounds %struct.dnode, %struct.dnode* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @le32_to_cpu(i32 %171)
  store i32 %172, i32* %7, align 4
  %173 = load %struct.dnode*, %struct.dnode** %11, align 8
  %174 = getelementptr inbounds %struct.dnode, %struct.dnode* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %167
  %178 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  br label %194

179:                                              ; preds = %167
  %180 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  %181 = load %struct.super_block*, %struct.super_block** %6, align 8
  %182 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %181)
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %179
  %187 = load %struct.super_block*, %struct.super_block** %6, align 8
  %188 = load i32, i32* %14, align 4
  %189 = call i64 @hpfs_stop_cycles(%struct.super_block* %187, i32 %188, i32* %18, i32* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %194

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %192, %179
  store i32 -1, i32* %15, align 4
  br label %41

194:                                              ; preds = %191, %177, %99, %46, %38
  ret void
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_stop_cycles(%struct.super_block*, i32, i32*, i32*, i8*) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(%struct.super_block*, i32, %struct.quad_buffer_head*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, i32, i32) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
