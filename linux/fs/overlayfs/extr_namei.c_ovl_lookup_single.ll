; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_lookup_single.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_lookup_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ovl_lookup_data = type { i32, i32, i32, i32, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.ovl_lookup_data*, i8*, i32, i64, i8*, %struct.dentry**)* @ovl_lookup_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_lookup_single(%struct.dentry* %0, %struct.ovl_lookup_data* %1, i8* %2, i32 %3, i64 %4, i8* %5, %struct.dentry** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.ovl_lookup_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.dentry**, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %9, align 8
  store %struct.ovl_lookup_data* %1, %struct.ovl_lookup_data** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.dentry** %6, %struct.dentry*** %15, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %18, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load %struct.dentry*, %struct.dentry** %9, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call %struct.dentry* @lookup_one_len_unlocked(i8* %25, %struct.dentry* %26, i32 %27)
  store %struct.dentry* %28, %struct.dentry** %16, align 8
  %29 = load %struct.dentry*, %struct.dentry** %16, align 8
  %30 = call i64 @IS_ERR(%struct.dentry* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %7
  %33 = load %struct.dentry*, %struct.dentry** %16, align 8
  %34 = call i32 @PTR_ERR(%struct.dentry* %33)
  store i32 %34, i32* %17, align 4
  store %struct.dentry* null, %struct.dentry** %16, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* @ENAMETOOLONG, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %32
  br label %173

45:                                               ; preds = %39
  br label %179

46:                                               ; preds = %7
  %47 = load %struct.dentry*, %struct.dentry** %16, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %176

52:                                               ; preds = %46
  %53 = load %struct.dentry*, %struct.dentry** %16, align 8
  %54 = call i64 @ovl_dentry_weird(%struct.dentry* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EREMOTE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %17, align 4
  br label %179

59:                                               ; preds = %52
  %60 = load %struct.dentry*, %struct.dentry** %16, align 8
  %61 = call i64 @ovl_is_whiteout(%struct.dentry* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %65 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %67 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %176

68:                                               ; preds = %59
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %73 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.dentry*, %struct.dentry** %16, align 8
  %78 = call i32 @d_is_reg(%struct.dentry* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %82 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %176

83:                                               ; preds = %76, %71, %68
  %84 = load %struct.dentry*, %struct.dentry** %16, align 8
  %85 = call i32 @d_can_lookup(%struct.dentry* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %127, label %87

87:                                               ; preds = %83
  %88 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %89 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %97 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %176

98:                                               ; preds = %92
  %99 = load %struct.dentry*, %struct.dentry** %16, align 8
  %100 = call i32 @ovl_check_metacopy_xattr(%struct.dentry* %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %179

104:                                              ; preds = %98
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %107 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %109 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %115 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %117 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %104
  %121 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %122 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120, %104
  br label %173

126:                                              ; preds = %120
  br label %163

127:                                              ; preds = %83
  %128 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %129 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.dentry*, %struct.dentry** %16, align 8
  %132 = call i64 @ovl_lookup_trap_inode(i32 %130, %struct.dentry* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load i32, i32* @ELOOP, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %17, align 4
  br label %179

137:                                              ; preds = %127
  %138 = load i32, i32* %18, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %142 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %141, i32 0, i32 3
  store i32 1, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %145 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %173

149:                                              ; preds = %143
  %150 = load %struct.dentry*, %struct.dentry** %16, align 8
  %151 = call i64 @ovl_is_opaquedir(%struct.dentry* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %149
  %154 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %155 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load i32, i32* %18, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %160 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %159, i32 0, i32 1
  store i32 1, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %153
  br label %173

162:                                              ; preds = %149
  br label %163

163:                                              ; preds = %162, %126
  %164 = load %struct.dentry*, %struct.dentry** %16, align 8
  %165 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %10, align 8
  %166 = load i64, i64* %13, align 8
  %167 = load i8*, i8** %14, align 8
  %168 = call i32 @ovl_check_redirect(%struct.dentry* %164, %struct.ovl_lookup_data* %165, i64 %166, i8* %167)
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %179

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %176, %172, %161, %148, %125, %44
  %174 = load %struct.dentry*, %struct.dentry** %16, align 8
  %175 = load %struct.dentry**, %struct.dentry*** %15, align 8
  store %struct.dentry* %174, %struct.dentry** %175, align 8
  store i32 0, i32* %8, align 4
  br label %183

176:                                              ; preds = %95, %80, %63, %51
  %177 = load %struct.dentry*, %struct.dentry** %16, align 8
  %178 = call i32 @dput(%struct.dentry* %177)
  store %struct.dentry* null, %struct.dentry** %16, align 8
  br label %173

179:                                              ; preds = %171, %134, %103, %56, %45
  %180 = load %struct.dentry*, %struct.dentry** %16, align 8
  %181 = call i32 @dput(%struct.dentry* %180)
  %182 = load i32, i32* %17, align 4
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %179, %173
  %184 = load i32, i32* %8, align 4
  ret i32 %184
}

declare dso_local %struct.dentry* @lookup_one_len_unlocked(i8*, %struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @ovl_dentry_weird(%struct.dentry*) #1

declare dso_local i64 @ovl_is_whiteout(%struct.dentry*) #1

declare dso_local i32 @d_is_reg(%struct.dentry*) #1

declare dso_local i32 @d_can_lookup(%struct.dentry*) #1

declare dso_local i32 @ovl_check_metacopy_xattr(%struct.dentry*) #1

declare dso_local i64 @ovl_lookup_trap_inode(i32, %struct.dentry*) #1

declare dso_local i64 @ovl_is_opaquedir(%struct.dentry*) #1

declare dso_local i32 @ovl_check_redirect(%struct.dentry*, %struct.ovl_lookup_data*, i64, i8*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
